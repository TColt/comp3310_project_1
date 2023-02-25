import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
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
                    onPressed: () {
                      Navigator.pushNamed(context, '/MessageScreen');
                    },
                    label: const Text('Messaging'),
                    icon: const Icon(Icons.chat_outlined),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.pushNamed(context, '/NonEmergencyScreen');
                    },
                    label: const Text('Non-Emergency Help'),
                    icon: const Icon(Icons.assist_walker),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    label: const Text('Emergency Help'),
                    icon: const Icon(Icons.warning_sharp),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
            ],
          ),
        ));
  }
}
