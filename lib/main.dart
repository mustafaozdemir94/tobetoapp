import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:tobetoapp/screens/login_page.dart';
import 'package:tobetoapp/screens/splash_screen.dart';

Color buttonColor = const Color.fromARGB(255, 155, 51, 255);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const SplashScreen(),
  ));
}
