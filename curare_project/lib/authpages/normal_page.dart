import 'package:doctor_demo/authpages/auth_page.dart';
import 'package:doctor_demo/pages/dlogin_page.dart';
import 'package:doctor_demo/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NormalPage extends StatelessWidget {
  const NormalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return AuthPage(); // AuthPage has to be changed to userpage
          } else {
            return WelcomePage();
          }
        }),
      ),
    );
  }
}
