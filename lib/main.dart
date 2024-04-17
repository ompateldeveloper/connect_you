import 'package:flutter/material.dart';
import 'package:connect_you/App.dart';
import 'package:connect_you/Pages/dashboard/dashboard.dart';
import 'package:connect_you/pages/auth/signin.dart';
import 'package:connect_you/pages/auth/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(Index(prefs: prefs));
}

class Index extends StatefulWidget {
  final SharedPreferences prefs;
  const Index({required this.prefs, super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool _isLoggedIn() {
    // Check if token exists in SharedPreferences
    return _prefs.getString('jwtToken') != null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const App(),
      routes: {
        '/signin': (context) => _isLoggedIn() ? Dashboard() : SignIn(),
        '/signup': (context) => _isLoggedIn() ? Dashboard() : SignUp(),
        '/dashboard': (context) => true ? Dashboard() : SignIn(),
      },
      initialRoute: '/',
    );
  }
}
