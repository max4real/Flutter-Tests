import 'package:flutter/material.dart';

class LoginData extends StatefulWidget { 
  final String? name;
  final String? password;
  const LoginData({super.key, required this.name, required this.password});

  @override
  State<LoginData> createState() => _LoginDataState();
}

class _LoginDataState extends State<LoginData> {
  @override
  void initState() {
    print(widget.name);
    print(widget.password);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Login Data"),
      ),
      body: Container(
        child: Text("this is name :${widget.name} this is password :${widget.password}"),
      ),
    );
  }
}