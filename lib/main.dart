import 'package:flutter/material.dart';
import 'package:flutter_test_one/figma_home_page.dart';
import 'package:flutter_test_one/login_page.dart';
import 'package:flutter_test_one/home_page.dart';
import 'package:flutter_test_one/signup_page.dart';
import 'package:flutter_test_one/test_layout.dart';
import 'package:flutter_test_one/test_layout_2.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      // home: const FigmaHomePage(),
      home: const HomePage(),
    ),
  );
}