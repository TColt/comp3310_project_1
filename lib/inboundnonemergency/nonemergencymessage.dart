import 'package:flutter/material.dart';

class NonEmergencyMessage extends StatelessWidget {
  const NonEmergencyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Non-Emergency Assistance"),
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
                  padding: EdgeInsets.only(top: 30.0), child: Center()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('Assistance is on the way.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40)),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 30.0), child: Center()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                    width: 400,
                    height: 100,
                    child: FloatingActionButton.extended(
                      heroTag: 'OK button',
                      onPressed: () {
                        Navigator.pushNamed(context, '/MainScreen');
                      },
                      label: const Text(
                        'OK',
                        style: TextStyle(fontSize: 30),
                      ),
                      icon: const Icon(
                        Icons.check,
                        size: 50,
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
