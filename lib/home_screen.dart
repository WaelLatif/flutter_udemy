// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('First App'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: () {
              print('notification clicked');
            },
          ),
          IconButton(
            icon: Text(
              'hello',
              style: TextStyle(
                fontSize: 13.0,
              ),
            ),
            onPressed: () {
              print('hello clicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Container(
              width: 200.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(
                        20.0,
                      ),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm8oPRV7E_qlUYUZwVZDHiXR-0Sosbb1TujQ&usqp=CAU',
                        ),
                        height: 200.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                        width: double.infinity,
                        color: Colors.black.withOpacity(.6),
                        child: Text(
                          'flower',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
