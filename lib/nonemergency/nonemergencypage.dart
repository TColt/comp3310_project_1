import 'package:flutter/material.dart';

class NonEmergencyScreen extends StatelessWidget {
  const NonEmergencyScreen({super.key});

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
                padding: EdgeInsets.only(top: 30.0),
                child: Center(),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    heroTag: 'food button',
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/NonEmergencyMessageScreen');
                    },
                    label: const Text('Food Assistance'),
                    icon: const Icon(Icons.food_bank),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    heroTag: 'bathroom button',
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/NonEmergencyMessageScreen');
                    },
                    label: const Text('Bathroom Assistance'),
                    icon: const Icon(Icons.bathroom_outlined),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    heroTag: 'physical button',
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/NonEmergencyMessageScreen');
                    },
                    label: const Text('Physical Assistance'),
                    icon: const Icon(Icons.elderly),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    heroTag: 'other button',
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/NonEmergencyMessageScreen');
                    },
                    label: const Text('Other'),
                    icon: const Icon(Icons.question_mark),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    heroTag: 'cancel button',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: const Text('Cancel'),
                    icon: const Icon(Icons.question_mark),
                  )),
            ],
          ),
        ));
  }
}
