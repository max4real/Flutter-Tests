import 'package:flutter/material.dart';
import 'package:flutter_test_one/login_page.dart';

class HomePage extends StatefulWidget{ 
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() =>_HomePage();
}
class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
          }, 
          child: const Text("Login Page"))
      )
    );
  }
}