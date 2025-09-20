import 'package:flutter/material.dart';

class UrlCheckerScreen extends StatefulWidget {
  const UrlCheckerScreen({super.key});

  @override
  State<UrlCheckerScreen> createState() => _UrlCheckerScreenState();
}

class _UrlCheckerScreenState extends State<UrlCheckerScreen> {
  final TextEditingController urlController = TextEditingController();
  String result = "";
  void checkUrl(String url) {
    if (url.contains("http") && url.contains(".")) {
      setState(() => result = "الرابط آمن");
    } else if (url.contains("https") && url.contains(".")) {
      setState(() => result = "الرابط آمن");
    }else if (url.contains("@gmail.com") && url.contains(".")) {
      setState(() => result = "الرابط آمن");
    }else if (url.contains("phish") && url.contains(".")) {
      setState(() => result = "الرابط مشبوه");
    }else {
      setState(() => result = "الرابط غير صالح ");
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
