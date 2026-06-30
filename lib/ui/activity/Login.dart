import 'package:flutter/material.dart';
import '../xml/xml_login.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      print("Vui lòng nhập đủ tài khoản và mật khẩu");
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return XmlLogin(
      usernameController: usernameController,
      passwordController: passwordController,
      onLogin: handleLogin,
    );
  }
}