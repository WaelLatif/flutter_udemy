// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'wael',
      phone: '01225795822',
    ),
    UserModel(
      id: 2,
      name: 'maro',
      phone: '0123456789',
    ),
    UserModel(
      id: 3,
      name: 'sally',
      phone: '0123456710',
    ),
    UserModel(
      id: 4,
      name: 'pero',
      phone: '0123456711',
    ),
    UserModel(
      id: 5,
      name: 'hoda',
      phone: '0123456712',
    ),
    UserModel(
      id: 6,
      name: 'mona',
      phone: '0123456713',
    ),
    UserModel(
      id: 7,
      name: 'alfy',
      phone: '01225795814',
    ),
    UserModel(
      id: 8,
      name: 'karem',
      phone: '0123456715',
    ),
    UserModel(
      id: 9,
      name: 'david',
      phone: '0123456716',
    ),
    UserModel(
      id: 10,
      name: 'monica',
      phone: '0123456717',
    ),
    UserModel(
      id: 11,
      name: 'mariam',
      phone: '0123456718',
    ),
    UserModel(
      id: 12,
      name: 'dena',
      phone: '0123456719',
    ),
    UserModel(
      id: 13,
      name: 'shreef',
      phone: '01225795823',
    ),
    UserModel(
      id: 14,
      name: 'shady',
      phone: '0123456724',
    ),
    UserModel(
      id: 15,
      name: 'sara',
      phone: '0123456725',
    ),
    UserModel(
      id: 16,
      name: 'nahed',
      phone: '0123456726',
    ),
    UserModel(
      id: 17,
      name: 'lilian',
      phone: '0123456727',
    ),
    UserModel(
      id: 18,
      name: 'amer',
      phone: '0123456728',
    ),
    UserModel(
      id: 19,
      name: 'ibrahem',
      phone: '01225795829',
    ),
    UserModel(
      id: 20,
      name: 'adel',
      phone: '0123456730',
    ),
    UserModel(
      id: 21,
      name: 'koko',
      phone: '0123456731',
    ),
    UserModel(
      id: 22,
      name: 'zalata',
      phone: '0123456732',
    ),
    UserModel(
      id: 23,
      name: 'amira',
      phone: '0123456733',
    ),
    UserModel(
      id: 24,
      name: 'gena',
      phone: '0123456734',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
