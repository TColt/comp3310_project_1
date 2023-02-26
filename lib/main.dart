import 'package:comp3310_project_1/emergencyhelpmessage/emergencymessage.dart';
import 'package:comp3310_project_1/inboundnonemergency/nonemergencymessage.dart';
import 'package:comp3310_project_1/nonemergency/nonemergencypage.dart';

import 'emergencyhelp/emergencyhelpconfirm.dart';
import 'mainpage/mainpage.dart';
import 'messaging/message.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Nav routes',
    initialRoute: '/',
    routes: {
      '/': (context) => const Login(),
      '/MainScreen': (context) => const MainScreen(),
      '/MessageScreen': (context) => const MessageScreen(),
      '/NonEmergencyScreen': (context) => const NonEmergencyScreen(),
      '/NonEmergencyMessageScreen': (context) => const NonEmergencyMessage(),
      '/EmergencyHelp': (context) => const EmergencyHelp(),
      '/EmergencyMessage': (context) => const EmergencyMessage(),
    },
  ));
}
