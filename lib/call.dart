import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls'),
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
          children: [
            Text('data'),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                // Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  //padding: EdgeInsets.all(7),
                  child: Icon(
                    Icons.heart_broken_rounded,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Add favourite')
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text('Recent')
          ],
        ),
      ),
    );
  }
}
