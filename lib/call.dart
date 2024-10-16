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
              imgUrl: 'images/user1.jpeg',
              name: 'Abdi',
              time: '40 minutes ago',
            ),
            const CallCard(
              imgUrl: 'images/user3.png',
              name: 'ali',
              time: '30 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user4.jpeg',
              name: 'Abdi',
              time: '40 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user1.jpeg',
              name: 'ahmed',
              time: '37 minutes ago',
            ),
            const CallCard(
              imgUrl: 'images/user2.png',
              name: 'moha',
              time: '40 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user1.jpeg',
              name: 'mustafe',
              time: '50 minutes ago',
            ),
            const CallCard(
              imgUrl: 'images/user3.png',
              name: 'yaasir',
              time: '9 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user4.jpeg',
              name: 'naasir',
              time: '10 minutes ago',
              color: Colors.red,
            ),
            const CallCard(
              imgUrl: 'images/user1.jpeg',
              name: 'muscab',
              time: 'yesterday 11:09',
            ),
          ],
        ),
      ),
    );
  }
}
