import 'package:connect_you/App.dart';
import 'package:connect_you/Pages/dashboard/dashboard.dart';
import 'package:connect_you/pages/auth/signin.dart';
import 'package:connect_you/pages/auth/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Index());
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const App(),
      routes: {
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/dashboard': (context) => Dashboard(),
      },
      initialRoute: '/',
    );
  }
}

