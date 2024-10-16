import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  const CallCard(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.time,
      this.color});
  final String imgUrl;
  final String name;
  final String time;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 20, color: color ?? Colors.black),
                        ),
                        const Icon(Icons.call),
                      ],
                    ),
                    Text(time),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
