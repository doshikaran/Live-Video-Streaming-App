import 'package:flutter/material.dart';
import 'package:twitch/responsive/responsive.dart';
import 'package:twitch/screens/login_screen.dart';
import 'package:twitch/screens/signup_screen.dart';
import 'package:twitch/widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to \nTwitch',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  text: 'Log in',
                ),
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
                text: "Sign Up",
              )
            ],
          ),
        ),
      ),
    );
  }
}
