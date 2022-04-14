import 'package:flutter/material.dart';
import 'package:reset_password/screen/home_screen.dart';
import 'package:reset_password/widges/custom_size.dart';

import 'new_password.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController email_Controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void vilidate() {
    if (formKey.currentState!.validate()) {
      "Please enter characters";
    } else {
      print(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                      ),
                      addHorizontalSpace(5),
                      Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.question_mark_outlined),
                ],
              ),
            ),
            addVerticalSpace(10),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reset password",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  addVerticalSpace(10),
                  Text(
                    "Enter the email associated with your account \nand we'll send an email with instructions to \nreset your password !",
                    style: TextStyle(
                      color: Color.fromARGB(221, 80, 79, 79),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  addVerticalSpace(30),
                  Text(
                    "Email Address:",
                    style: TextStyle(
                      color: Color.fromARGB(221, 80, 79, 79),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  addVerticalSpace(5),
                  Form(
                    key: formKey,
                    child: TextFormField(
                      controller: email_Controller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Email";
                        } else if (!RegExp(
                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
                            .hasMatch(value)) {
                          return "Please enter valide email";
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 220, 223),
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: 15,
                        ),
                      ),
                    ),
                  ),
                  addVerticalSpace(15),
                  InkWell(
                    onTap: vilidate,
                    child: Container(
                      width: size.width - 20,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Send Instructions",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
