import 'package:flutter/material.dart';

class PasswordCheckerScreen extends StatefulWidget {
  const PasswordCheckerScreen({super.key});

  @override
  State<PasswordCheckerScreen> createState() => _PasswordCheckerScreenState();
}

class _PasswordCheckerScreenState extends State<PasswordCheckerScreen> {
  final TextEditingController passwordController = TextEditingController();
  String strength = "";
  Color strengthColor = Colors.black;
  void checkPassword(String password) {
    if (password.length < 4) {
      setState(() {
        strength = "ضغيف";
        strengthColor = Colors.red;
      });
    } else if (password.length < 8) {
      setState(() {
        strength = "متوسطة";
        strengthColor = Colors.orange;
      });
    } else {
      setState(() {
        strength = "عالية";
        strengthColor = Colors.green;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("فحص كلمة المرور")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "أدخل كلمة المرور:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Enter_password",
                border: OutlineInputBorder(),
              ),
              onChanged: checkPassword,
            ),
            const SizedBox(height: 20),
            Text(
              "القوة: $strength",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:Icon(Icons.arrow_back), label: Text("رجوع"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
