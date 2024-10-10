import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Image.asset(
                  'images/user1.jpeg',
                  width: 60,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text('Ahmed Ali'),
                        SizedBox(
                          width: 210,
                        ),
                        Text('3:00')
                      ],
                    ),
                  ),
                  Text('message')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
