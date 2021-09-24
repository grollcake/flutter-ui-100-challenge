import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_app/challenges/006_doctor_consultant/screens/006_signin_screen.dart';
import 'package:main_app/challenges/006_doctor_consultant/screens/006_signup_screen.dart';

class Challenge006 extends StatefulWidget {
  const Challenge006({Key? key}) : super(key: key);

  @override
  _Challenge006State createState() => _Challenge006State();
}

class _Challenge006State extends State<Challenge006> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Stack(
      fit: StackFit.expand,
      children: [
        SvgPicture.asset("assets/images/006/icons/splash_bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Spacer(),
                SvgPicture.asset('assets/images/006/icons/gerda_logo.svg'),
                Spacer(),
                // SignUp button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen())),
                    child: Text('Sign up'),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xff6cd8d1),
                    ),
                  ),
                ),
                // SignIn button
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen())),
                      child: Text('Sign in'),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Color(0xff6cd8d1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 64),
              ],
            ),
          ),
        ),
      ],
    );

    // return Stack(
    //   fit: StackFit.expand,
    //   children: [
    //     SvgPicture.asset("assets/images/006/icons/bg.svg"),
    //   ],
    // );
  }
}
