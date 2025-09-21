import 'package:flutter/material.dart';

class UrlCheckerScreen extends StatefulWidget {
  const UrlCheckerScreen({super.key});

  @override
  State<UrlCheckerScreen> createState() => _UrlCheckerScreenState();
}

class _UrlCheckerScreenState extends State<UrlCheckerScreen> {
  final TextEditingController urlController = TextEditingController();
  String result = "";
  Color resultColor = Colors.black;
  void checkUrl(String url) {
    String lowerUrl = url.toLowerCase();

    if ((lowerUrl.startsWith("http") || lowerUrl.startsWith("https")) &&
        lowerUrl.contains(".")) {
      setState(() {
        result = "الرابط آمن ✅";
        resultColor = Colors.green;
      });}
    else if (lowerUrl.contains("phish")) {
      setState(() {
        result = "الرابط مشبوه ⚠️";
        resultColor = Colors.orange;
      });
    }else if (lowerUrl.contains("@gmail.com")) {
      setState(() {
        result = "الرابط آمن (بريد) 📧";
        resultColor = Colors.green;
      });
    }else {
      setState(() {
        result = "الرابط غير صالح ❌";
        resultColor = Colors.red;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("فحص الرابط")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: urlController,
              decoration: InputDecoration(
                labelText: "أدخل الرابط",
                border: OutlineInputBorder(),
              ),
              onChanged: checkUrl,
            ),
            SizedBox(height: 20),
            Text(
              "النتيجة: $result",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
