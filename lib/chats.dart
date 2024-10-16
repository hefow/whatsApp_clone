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
            const UserCard(
              imgUrl: 'images/user1.jpeg',
              name: 'Osman',
              time: '21:02',
              message: 'wra ku away',
            ),
            const UserCard(
              imgUrl: 'images/user2.png',
              name: 'yaasin',
              time: '12:02',
              message: 'ok',
            ),
            const UserCard(
              imgUrl: 'images/user3.png',
              name: 'Abdinor',
              time: '09:02',
              message: 'football',
            ),
            const UserCard(
              imgUrl: 'images/user4.jpeg',
              name: 'nugaale',
              time: '08:02',
              message: 'main axis',
            ),
            const UserCard(
              imgUrl: 'images/user1.jpeg',
              name: 'shacir',
              time: '21:02',
              message: 'so bax',
            ),
            const UserCard(
              imgUrl: 'images/user2.png',
              name: 'Osman',
              time: '11:02',
            ),
            const UserCard(
              imgUrl: 'images/user3.png',
              name: 'Abdinor',
              time: '09:02',
              message: 'football',
            ),
            const UserCard(
              imgUrl: 'images/user4.jpeg',
              name: 'nugaale',
              time: '08:02',
            ),
            const UserCard(
              imgUrl: 'images/user1.jpeg',
              name: 'Osman',
              time: '21:02',
              message: 'wra ku away',
            ),
            const UserCard(
              imgUrl: 'images/user2.png',
              name: 'Osman',
              time: '11:02',
              message: 'wayee',
            ),
            const UserCard(
              imgUrl: 'images/user3.png',
              name: 'isma',
              time: '02:02',
              message: 'Germeny',
            ),
            const UserCard(
              imgUrl: 'images/user4.jpeg',
              name: 'ahmed duale',
              time: '10:02',
              message: 'muraadso kaso',
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
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
          const Call();
        },
        child: const Icon(Icons.control_point_duplicate_sharp),
      ),
    );
  }
}
