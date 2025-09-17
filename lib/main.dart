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
       home: WelcomeScreen(),
      //   body: Center(
      //     child: Text(
      //       "مرحبا بكم في تطبيق توهيب عبدالرب",
      //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //     ),
      //   ),
      // ),
    );
  }
}
