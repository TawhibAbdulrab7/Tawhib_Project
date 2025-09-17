import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("قائمة الشبكات"),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue.shade200,Colors.purple.shade300],
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
