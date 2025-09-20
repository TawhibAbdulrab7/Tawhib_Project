import 'package:flutter/material.dart';
import 'package:tawhib_project/screens/network_details_screen.dart';
import 'package:tawhib_project/screens/password_checker_screen.dart';
import 'package:tawhib_project/screens/welcome_screen.dart';
import 'package:tawhib_project/screens/home_screen.dart';

void main() {
  runApp(Tawhib());
}

class Tawhib extends StatelessWidget {
  const Tawhib({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Tawhib App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/':(context)=>WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/network': (context) => NetworkDetailsScreen(ssid: "wifi", strength: "3/5", type: "WPA2"),
        '/password': (context) => PasswordCheckerScreen(),
      },
    );
  }
}
