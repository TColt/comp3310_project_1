import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.blue,
          actions: [
            PopupMenuButton(
                // add icon, by default "3 dot" icon
                // icon: Icon(Icons.book)
                itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text("Settings"),
                ),
              ];
            }, onSelected: (value) {
              if (value == 1) {
                print("Settings menu is selected.");
              }
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
                    onPressed: () {},
                    label: const Text('Messaging'),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: const Text('Non Emergency Help'),
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
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
            ],
          ),
        ));
  }
}
