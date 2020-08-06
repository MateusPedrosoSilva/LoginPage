import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_screen/components/rounded_button.dart';
import 'package:login_screen/constants.dart';
import 'package:login_screen/screens/Login/login_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to the den of Wolves",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            RoundedButton(
              text: "OTHER",
              color: kPrimaryLightColor,
              textColor: kPrimaryColor,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
