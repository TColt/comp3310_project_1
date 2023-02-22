import 'package:comp3310_project_1/mainpage/mainpage.dart';
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
      '/second': (context) => const SecondScreen(),
    },
  ));
}
