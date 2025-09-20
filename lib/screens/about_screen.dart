import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("حول التطبيق")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("المبرمج: Tawhib Abdulrab",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("البريد: tawheebabdurab@gmail.com",
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text("حقوق محفوظة 2025",
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
