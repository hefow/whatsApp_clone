import 'package:flutter/material.dart';
import 'package:whats_app_clone/call.dart';
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
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            const UserCard(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.lock),
                Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                Text('your personal messeges are end-to-end encrypted.')
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Call();
        },
        child: Icon(Icons.control_point_duplicate_sharp),
      ),
    );
  }
}
