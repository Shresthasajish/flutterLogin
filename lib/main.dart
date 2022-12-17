import 'package:flutter/material.dart';
import 'package:login/widgets/login_screen.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LoginApp",
      home: LoginScreen(),
    );
  }
}
