import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget{
  const SignUpPage({super.key});
  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Sign Up"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person), 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  label: Text("Full Name"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  label: Text("Email"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child:  TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  label: Text("Password"),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                  child: const Text("Sign Up"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}