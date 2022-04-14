import 'package:flutter/material.dart';
import 'package:reset_password/screen/new_password.dart';
import 'package:reset_password/screen/reset_password.dart';

import 'package:reset_password/widges/custom_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Container(), flex: 2),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 196, 250).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/mail.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            addVerticalSpace(15),
            Center(
              child: Text(
                "Check your mail",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            addVerticalSpace(20),
            Center(
              child: Column(
                children: [
                  Text(
                    "We have sent a password recover",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "instructions to your email",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(20),
            Container(
              width: size.width - 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateNewPassword(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    "open email app",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            addVerticalSpace(20),
            Center(
              child: Text(
                "Skip I'll confirm later",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Flexible(child: Container(), flex: 2),
            Center(
              child: Column(
                children: [
                  Text(
                    "Didnot receive the email? Check your spam filter,",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'or',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' try another email address',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(20),
          ],
        ),
      ),
    );
  }
}
