import 'package:flutter/material.dart';

void main() {
  runApp(Tawhib());
}

class Tawhib extends StatelessWidget {
  const Tawhib({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "مرحبا بكم في تطبيق توهيب عبدالرب",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
