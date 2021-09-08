import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_app/challenges/006_doctor_consultant/constants/constants.dart';
import 'package:main_app/challenges/006_doctor_consultant/screens/006_signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/images/006/icons/bg.svg',
            fit: BoxFit.cover,
          ),
          signinContents(context),
        ],
      ),
    );
  }

  Widget signinContents(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Create Account'),
            Row(
              children: [
                Text('Already have a account? '),
                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen())),
                  child: Text('Sign in!'),
                ),
              ],
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldLabel(label: 'Username'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'grollcake',
                        border: k006InputBorder,
                        enabledBorder: k006InputBorder,
                        focusedBorder: k006InputBorder,
                      ),
                    ),
                  ),
                  TextFieldLabel(label: 'Email'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'name@mail.com',
                        border: k006InputBorder,
                        enabledBorder: k006InputBorder,
                        focusedBorder: k006InputBorder,
                      ),
                    ),
                  ),
                  TextFieldLabel(label: 'Phone'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '+82 010-4204-8070',
                        border: k006InputBorder,
                        enabledBorder: k006InputBorder,
                        focusedBorder: k006InputBorder,
                      ),
                    ),
                  ),
                  TextFieldLabel(label: 'Password'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '******',
                        border: k006InputBorder,
                        enabledBorder: k006InputBorder,
                        focusedBorder: k006InputBorder,
                      ),
                    ),
                  ),
                  TextFieldLabel(label: 'Confirm password'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '******',
                        border: k006InputBorder,
                        enabledBorder: k006InputBorder,
                        focusedBorder: k006InputBorder,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel({
    Key? key, required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }
}
