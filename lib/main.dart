import 'package:flutter/material.dart';
import 'package:flutter_udemy/counter_screen.dart';
import 'package:flutter_udemy/home_screen.dart';
import 'package:flutter_udemy/login_Screen.dart';
import 'package:flutter_udemy/messenger_screen.dart';

import 'users_screen.dart';

void main() {
  runApp(MyApp());

  MyApp app = MyApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
