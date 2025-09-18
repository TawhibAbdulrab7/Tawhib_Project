import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<String, String>> networks = [
    {'ssid': "Hamza Net", 'strength': '4/5', 'type': 'WPA2'},
    {'ssid': 'Mohammed Net', 'strength': '3/5', 'type': 'WPA3'},
    {'ssid': "ALbarq Net", 'strength': '5/5', 'type': 'WPA2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("قائمة الشبكات")),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.purple.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: networks.length,
            itemBuilder: (context, index) {
            final net = networks[index];
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.wifi,color: Colors.blue,),
                title: Text(net['ssid']!),
                subtitle: Text('قوة الإشارة: ${net['strength']} - نوع: ${net['type']}'),
              ),
            );

            }),
      ),
    );
  }
}
