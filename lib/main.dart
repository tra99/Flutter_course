import 'package:flutter/material.dart';
import 'package:full_course_app/screen/employee_screen.dart';
import 'package:full_course_app/screen/home_screen.dart';
import 'package:full_course_app/screen/login_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  LoginScreen(),
    );
  }
}

