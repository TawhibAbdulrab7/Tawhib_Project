import 'package:flutter/material.dart';
import 'package:tawhib_project/screens/network_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<String, String>> networks = [
    {'ssid': "23_AlHamza_Net", 'strength': '4/5', 'type': 'WPA2'},
    {'ssid': '20_AlHamza_Net', 'strength': '4/5', 'type': 'WPA2'},
    {'ssid': "15_AlHamza_Net", 'strength': '4/5', 'type': 'WPA2'},
    {'ssid': "18_AlHamza_Net", 'strength': '4/5', 'type': 'WPA2'},
    {'ssid': 'AlMohammed_Net_10', 'strength': '3/5', 'type': 'WPA3'},
    {'ssid': "AlMohammed_Net_7", 'strength': '3/5', 'type': 'WPA3'},
    {'ssid': "AlMohammed_Net_11", 'strength': '3/5', 'type': 'WPA3'},
    {'ssid': 'AlMohammed_Net_13', 'strength': '3/5', 'type': 'WPA3'},
    {'ssid': "ALbarq_Net_53", 'strength': '5/5', 'type': 'WPA2'},
    {'ssid': "ALbarq_Net_57", 'strength': '5/5', 'type': 'WPA2'},
    {'ssid': 'ALbarq_Net_79', 'strength': '5/5', 'type': 'WPA2'},
    {'ssid': "ALbarq_Net_80", 'strength': '5/5', 'type': 'WPA2'},
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
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => NetworkDetailsScreen(
                      ssid: net['ssid']!,
                      strength: net['strength']!,
                      type: net['type']!,
                  ),),);
                },
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
