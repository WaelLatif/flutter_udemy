// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 16.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/120733428_10221478053758401_8993704139106165199_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=RK8Q19uknZgAX-nmjbw&_nc_ht=scontent.fcai20-2.fna&oh=00_AT_AzVHD9WcHtrlcmrw4en2E7UhJX76nk7ghV9YZ-iWu3g&oe=624E8EE7'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 17.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 17.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Search',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 90.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildStoryItem(),
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(

              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) =>SizedBox(
                  height: 15.0,
                ),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [

          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 28.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/120733428_10221478053758401_8993704139106165199_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=RK8Q19uknZgAX-nmjbw&_nc_ht=scontent.fcai20-2.fna&oh=00_AT_AzVHD9WcHtrlcmrw4en2E7UhJX76nk7ghV9YZ-iWu3g&oe=624E8EE7'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 1.5,
                  end: 1.5,
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wael Latif',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'I love you maroooooo you are my sunshine - adore you my love',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '02:00 AM',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildStoryItem() => Container(
        width: 70.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/120733428_10221478053758401_8993704139106165199_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=RK8Q19uknZgAX-nmjbw&_nc_ht=scontent.fcai20-2.fna&oh=00_AT_AzVHD9WcHtrlcmrw4en2E7UhJX76nk7ghV9YZ-iWu3g&oe=624E8EE7'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 1.5,
                    end: 1.5,
                  ),
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Text(
                  'Wael Latif',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      );
}
