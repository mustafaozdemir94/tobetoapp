import 'package:flutter/material.dart';
import 'package:tobetoapp/screens/login_page.dart';

Color buttonColor = const Color.fromARGB(255, 155, 51, 255);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const LoginPage(),
  ));
}
