import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  const CallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Image.asset(
                  'images/user1.jpeg',
                  width: 60,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Row(
                      children: [
                        Text('Ahmed Ali'),
                        SizedBox(
                          width: 210,
                        ),
                        Icon(Icons.call)
                      ],
                    ),
                  ),
                  const Text('message')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
