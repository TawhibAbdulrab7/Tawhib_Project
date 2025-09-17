import 'package:flutter/material.dart';
import 'package:tawhib_project/screens/welcome_screen.dart';

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
      },
    );
  }
}
