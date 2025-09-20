import 'package:flutter/material.dart';

class PasswordCheckerScreen extends StatefulWidget {
  const PasswordCheckerScreen({super.key});

  @override
  State<PasswordCheckerScreen> createState() => _PasswordCheckerScreenState();
}

class _PasswordCheckerScreenState extends State<PasswordCheckerScreen> {
  final TextEditingController passwordController = TextEditingController();
  String strength = "";
  void checkPassword(String password){
    if(password.length<4){
      setState(() {
        strength ="low";
      });
    }else if (password.length<8){
      setState(() {
        strength= "Medium";
      });
    }else{
      setState(() {
        strength = "high";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("فحص كلمة المرور"),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Enter_password",
                border: OutlineInputBorder(),
              ),
                onChanged: checkPassword,
            ),
            SizedBox(height: 20,),
            Text("القوة: $strength",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          ],
        ),
      ),
    );
  }
}
