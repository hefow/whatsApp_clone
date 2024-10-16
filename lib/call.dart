import 'package:flutter/material.dart';
import 'package:whats_app_clone/call_card.dart';
import 'package:whats_app_clone/chats.dart';
import 'package:whats_app_clone/user_card.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 14)),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                'Favourites',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(7),
                  child: const Icon(
                    Icons.heart_broken_rounded,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text('Add favourite')
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Recent',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const CallCard(
              imgUrl: 'images/user2.png',
              name: 'moha',
              time: '40 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user2.png',
              name: 'Abdi',
              time: '40 minutes ago',
            ),
            const CallCard(
              imgUrl: 'images/user2.png',
              name: 'aliii',
              time: '30 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user2.png',
              name: 'Abdii',
              time: '40 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user2.png',
              name: 'ahmed',
              time: '40 minutes ago',
            ),
          ],
        ),
      ),
    );
  }
}
