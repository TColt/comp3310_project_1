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
                SizedBox(
                    width: 400,
                    height: 100,
                    child: FloatingActionButton.extended(
                      heroTag: 'yes button',
                      onPressed: () {
                        Navigator.pushNamed(context, '/EmergencyMessage');
                      },
                      label: const Text(
                        'Yes',
                        style: TextStyle(fontSize: 30),
                      ),
                      icon: const Icon(
                        Icons.check,
                        size: 50,
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.only(left: 30.0), child: Center()),
                SizedBox(
                    width: 400,
                    height: 100,
                    child: FloatingActionButton.extended(
                      heroTag: 'no button',
                      onPressed: () {
                        Navigator.pushNamed(context, '/MainScreen');
                      },
                      label: const Text(
                        'No',
                        style: TextStyle(fontSize: 30),
                      ),
                      icon: const Icon(
                        Icons.cancel,
                        size: 50,
                      ),
                    )),
              ]),
            ],
          ),
        ));
  }
}
