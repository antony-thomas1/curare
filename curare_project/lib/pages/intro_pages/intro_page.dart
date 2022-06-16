import 'package:doctor_demo/pages/pregister_page.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 11, 79, 195),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Text
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Digitalize',
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'your',
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'health care',
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.asset('lib/assets/dmedical.png'),
              // for slidable get start
              Padding(
                padding: const EdgeInsets.all(20),
                child: SlideAction(
                  borderRadius: 12,
                  innerColor: Colors.white,
                  outerColor: Colors.grey[800],
                  text: 'Slide to Get Started',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  sliderRotate: false,
                  onSubmit: () {
                    // Navigate to Patient Sign up
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PRegisterPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
