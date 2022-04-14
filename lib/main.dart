import 'package:flutter/material.dart';
import 'package:reset_password/screen/home_screen.dart';

import 'screen/new_password.dart';
import 'screen/reset_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      home: ResetPassword(),
      // home: CreateNewPassword(),
    );
  }
}
