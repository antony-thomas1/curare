import 'dart:ui';

import 'package:doctor_demo/pages/pregister_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      color: Color.fromARGB(255, 11, 79, 195),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                padding: const EdgeInsets.all(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Slidable(
                    startActionPane: ActionPane(
                      motion: BehindMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            // do some action
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PRegisterPage()));
                          },
                          backgroundColor: Colors.green,
                          icon: Icons.arrow_forward_ios_rounded,
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                      ),
                      child: const ListTile(
                        title: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_circle_right_rounded,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
