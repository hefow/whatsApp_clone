import 'package:flutter/material.dart';
import 'package:whats_app_clone/user_card.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: const [
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
            const SizedBox(
              height: 8,
            ),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: const Row(
          children: [
            Column(
              children: [Icon(Icons.chat_sharp), Text('data')],
            )
          ],
        ),
      ),
    );
  }
}
