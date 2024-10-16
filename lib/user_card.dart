import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {super.key,
      required this.imgUrl,
      this.message,
      required this.name,
      required this.time});
  final String imgUrl;
  final String name;
  final String time;
  final String? message;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Image.asset(
                  imgUrl,
                  width: 60,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            name,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(time),
                      ],
                    ),
                    Text(
                      message ?? 'no message',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
