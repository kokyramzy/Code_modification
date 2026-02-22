import 'package:flutter/material.dart';
import 'package:new_project/views/loginscreen.dart';
import 'package:new_project/views/signupscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "login",
      home: SignupScreen(),
    );
  }
}
