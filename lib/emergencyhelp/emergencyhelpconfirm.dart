import 'package:flutter/material.dart';

class EmergencyHelp extends StatelessWidget {
  const EmergencyHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Emergency Help"),
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
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(),
              ),
              const Text('Do you need emergency assistance?',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                const Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 20, right: 20),
                ),
                Expanded(
                  child: FloatingActionButton.extended(
                    heroTag: 'yes button',
                    onPressed: () {
                      Navigator.pushNamed(context, '/EmergencyMessage');
                    },
                    label: const Text('Yes'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 20, right: 20),
                ),
                Expanded(
                  child: FloatingActionButton.extended(
                    heroTag: 'no button',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: const Text('No'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 20, right: 20),
                ),
              ]),
            ],
          ),
        ));
  }
}
