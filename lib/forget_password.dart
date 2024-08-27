import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget{
  const ForgetPassword({super.key});
  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}
class _ForgetPassword extends State<ForgetPassword>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Reset Password"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text("this is forget password"),
      )
    );
  }
}