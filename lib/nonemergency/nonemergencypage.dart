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
                child: SizedBox(
                    width: 400,
                    height: 100,
                    child: FloatingActionButton.extended(
                      heroTag: 'food button',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/NonEmergencyMessageScreen');
                      },
                      label: const Text(
                        'Food Assistance',
                        style: TextStyle(fontSize: 30),
                      ),
                      icon: const Icon(
                        Icons.food_bank,
                        size: 50,
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                    width: 400,
                    height: 100,
                    child: FloatingActionButton.extended(
                      heroTag: 'bathroom button',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/NonEmergencyMessageScreen');
                      },
                      label: const Text(
                        'Bathroom Assistance',
                        style: TextStyle(fontSize: 30),
                      ),
                      icon: const Icon(
                        Icons.bathroom_outlined,
                        size: 50,
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                    width: 400,
                    height: 100,
                    child: FloatingActionButton.extended(
                      heroTag: 'physical button',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/NonEmergencyMessageScreen');
                      },
                      label: const Text(
                        'Physical Assistance',
                        style: TextStyle(fontSize: 30),
                      ),
                      icon: const Icon(
                        Icons.elderly,
                        size: 50,
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                      width: 400,
                      height: 100,
                      child: FloatingActionButton.extended(
                        heroTag: 'Other button',
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/NonEmergencyMessageScreen');
                        },
                        label: const Text(
                          'other Assistance',
                          style: TextStyle(fontSize: 30),
                        ),
                        icon: const Icon(
                          Icons.question_mark,
                          size: 50,
                        ),
                      ))),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                      width: 400,
                      height: 100,
                      child: FloatingActionButton.extended(
                        heroTag: 'cancel button',
                        onPressed: () {
                          Navigator.pushNamed(context, '/MainScreen');
                        },
                        label: const Text(
                          'Cancel',
                          style: TextStyle(fontSize: 30),
                        ),
                        icon: const Icon(
                          Icons.cancel,
                          size: 50,
                        ),
                      ))),
            ],
          ),
        ));
  }
}
