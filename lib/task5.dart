import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('task5'),
      ),
      body: Center(
        child: Column(
          children: [
            // CircleAvatar(
            //   radius: 100,
            //   backgroundImage: AssetImage('assets/image.jpeg'),
            // ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                'assets/image.jpeg',
                fit: BoxFit.cover,
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
