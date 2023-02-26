import 'package:flutter/material.dart';

class EmergencyMessage extends StatelessWidget {
  const EmergencyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Emergency Assistance"),
          backgroundColor: Colors.blue,
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text("Settings"),
                ),
              ];
            }, onSelected: (value) {
              if (value == 1) {}
            }),
          ],
        ),
        body: const Center(
          child: Text('Emergency assistance is on the way.',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
        ));
  }
}
