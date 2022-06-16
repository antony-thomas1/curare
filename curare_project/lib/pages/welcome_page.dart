import 'package:doctor_demo/pages/intro_pages/intro_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
// Controller to track which page we're on
  PageController _controller = PageController();

// keep track of which page we're currently on
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView
          PageView(
            controller: _controller,
            children: const [
              IntroPage(),
            ],
          ),
        ],
      ),
    );
  }
}
