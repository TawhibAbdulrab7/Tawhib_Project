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
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController urlController = TextEditingController();

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.wifi, color: Colors.white, size: 80),
              SizedBox(height: 20),
              Text(
                "SSID: $ssid",
                style: TextStyle(fontSize: 18, color: Colors.white),

              ),
              Text(
                "قوة الإشارة: $strength",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                "نوع التشفير: $type",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Enter_Password",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/password');
              }, child: Text("فحص كلمة المرور")),
              TextField(
                controller: urlController,
                decoration: InputDecoration(
                  labelText: "Enter_Email",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/url');
              }, child: Text("فحص الرابط  ")),

            ],
          ),
        ),
      ),
    );
  }
}
