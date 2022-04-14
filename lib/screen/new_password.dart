import 'package:flutter/material.dart';
import 'package:reset_password/widges/custom_size.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool isHiddenPass = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirm_password = TextEditingController();
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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  addHorizontalSpace(5),
                  Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              addVerticalSpace(20),
              Text(
                "Create new password",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              addVerticalSpace(10),
              Text(
                "Your new password must be different \nfrom previous user passwords.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              addVerticalSpace(30),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    addVerticalSpace(6),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter password";
                        } else if (value.length < 8) {
                          return "Must be a least 8 characters";
                        }
                        return null;
                      },
                      obscureText: isHiddenPass,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 220, 223),
                        hintText: "Enter new password",
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
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isHiddenPass = !isHiddenPass;
                            });
                          },
                          child: isHiddenPass
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                    addVerticalSpace(30),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    addVerticalSpace(6),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _confirm_password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter password';
                        } else if (_password.text != _confirm_password.text) {
                          return "Both passwords much match";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 220, 223),
                        hintText: "Confirm password",
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
                  ],
                ),
              ),
              addVerticalSpace(20),
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
                      "Reset password",
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
      ),
    );
  }
}
