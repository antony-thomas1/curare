import 'package:doctor_demo/pages/pregister_page.dart';
import 'package:flutter/material.dart';

// Patient Login/Sign In page

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top Image
                Image.asset(
                  'lib/assets/online-registration.png',
                  scale: 3,
                ),
                // login text
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Patient Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Email',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Password',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // Forgot Password Text(clickable?)
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                // Sign_in button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // not a member? Register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PRegisterPage()));
                      },
                      child: const Text(
                        ' Register',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Other login options
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        // Google Login
                        'lib/assets/google.png',
                        scale: 9,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        // Facebook Login
                        'lib/assets/facebook.png',
                        scale: 9,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
