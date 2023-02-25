import 'package:comp3310_project_1/inboundnonemergency/nonemergencymessage.dart';
import 'package:comp3310_project_1/nonemergency/nonemergencypage.dart';

import 'mainpage/mainpage.dart';
import 'messaging/message.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Nav routes',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const Login(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/MainScreen': (context) => const MainScreen(),
      '/MessageScreen': (context) => const MessageScreen(),
      '/NonEmergencyScreen': (context) => const NonEmergencyScreen(),
      '/NonEmergencyMessageScreen': (context) => const NonEmergencyMessage(),
    },
  ));
}
