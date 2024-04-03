import 'package:connect_you/pages/auth/signin.dart';
import 'package:connect_you/pages/auth/signup.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: {
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
      },
      home:Center(
        
      )
    );
  }
}