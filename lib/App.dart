import 'package:connect_you/pages/auth/signin.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signin');
          },
          child: Text('halo'),
        ),
      ),
    );
  }
}
