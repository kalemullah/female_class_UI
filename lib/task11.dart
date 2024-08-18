import 'package:flutter/material.dart';

class Task11 extends StatelessWidget {
  Task11({super.key});
  List<String> Names = ['sapna', 'najeeba', 'baji', 'afridi', 'linta', 'mehek'];
  List<String> images = [
    'assets/shoes1.jpeg',
    'assets/shoes1.jpeg',
    'assets/shoes1.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        color: Colors.amberAccent,
                        child: Image.asset(images[index]),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
