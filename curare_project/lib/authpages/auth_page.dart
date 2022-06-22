import 'package:doctor_demo/pages/login_page.dart';
import 'package:doctor_demo/pages/pregister_page.dart';
import 'package:doctor_demo/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially show the loginPage - if not a user show WelcomePage
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showPRegisterPage: toggleScreens);
    } else {
      return PRegisterPage(showLoginPage: toggleScreens);
    }
  }
}
