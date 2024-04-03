import 'package:connect_you/pages/auth/signin.dart';
import 'package:connect_you/pages/auth/signup.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/signin': (context) => SignIn(),
          '/signup': (context) => SignUp(),
        },
        home: Scaffold(
          body: Text('data'),
        )
    );
  }
}
