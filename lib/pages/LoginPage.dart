import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/user.png',
                width: 100, // Set a suitable width for the image
                height: 100, // Set a suitable height for the image
              ),
              const Text(
                'Welcome back! You have been missed.',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Username",
                  hintText: "Username",
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Password",
                  hintText: "Password",
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your sign-in logic here
                },
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Don't have an account? Please sign up",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/google.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
