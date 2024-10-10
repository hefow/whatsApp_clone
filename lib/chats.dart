import 'package:flutter/material.dart';
import 'package:whats_app_clone/user_card.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: [
          SizedBox(
            width: 10,
          ),
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Divider(
              height: 10,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 8,
            ),
            UserCard(),
            UserCard(),
            UserCard(),
            UserCard(),
            UserCard()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [Icon(Icons.chat_bubble), Text('data')],
        ),
      ),
    );
  }
}
