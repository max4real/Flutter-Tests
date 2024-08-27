import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test_one/forget_password.dart';
import 'package:flutter_test_one/login_data.dart';
import 'package:flutter_test_one/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? name_ = "";
  String? password_ = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("Login"),
        ),
        body: Align(
          alignment: Alignment.center,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 69, 69),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (value) {
                    name_ = value;
                  },
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    label: Text("User name"),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    password_ = value;
                  },
                  decoration: InputDecoration(
                    // prefix: Icon(Icons.lock),
                    suffixIcon:
                        //We used IconButton to make icon clickable
                        IconButton(
                      icon: const Icon(Icons.visibility_off),
                      onPressed: (){
                        print("asdf");
                      },
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    label: const Text("Password"),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgetPassword()));
                    },
                    child: const Text(
                      "Forget Your Password?",
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoginData(name: name_, password: password_)));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                  child: const Text("Login"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an acount?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const Text("Sign Up")),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
