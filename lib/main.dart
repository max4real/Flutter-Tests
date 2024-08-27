import 'package:flutter/material.dart';
import 'package:flutter_test_one/figma_home_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const FigmaHomePage(),
      // home: const HomePage(),
    ),
  );
}