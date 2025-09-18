import 'package:flutter/material.dart';

class NetworkDetailsScreen extends StatelessWidget {
  final String ssid;
  final String strength;
  final String type;

  NetworkDetailsScreen({
    required this.ssid,
    required this.strength,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تفاصيل الشبكه")),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade200, Colors.deepPurple.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
