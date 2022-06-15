import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      color: Colors.grey[200],
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'lib/assets/vschedule.png',
              ),
              const SizedBox(
                height: 20,
              ),
              // Text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Welcome to Curare',
                  style: TextStyle(
                    fontSize: 28.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
