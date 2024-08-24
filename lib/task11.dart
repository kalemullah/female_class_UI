import 'package:flutter/material.dart';

class Task11 extends StatelessWidget {
  Task11({super.key});
  List<String> Names = [
    'your story',
    'najeeba',
    'baji',
    'afridi',
    'linta',
    'mehek',
    'afridi',
    'linta',
    'mehek'
  ];
  List<String> images = [
    'assets/image.jpeg',
    'assets/image.jpeg',
    'assets/image.jpeg',
    'assets/image.jpeg',
    'assets/image.jpeg',
    'assets/image.jpeg',
    'assets/image.jpeg',
    'assets/image.jpeg',
    'assets/image.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              Container(
                height: 200,
                width: 390,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              index == 0
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(Icons.add))
                                  : SizedBox(
                                      height: 0,
                                    ),
                              CircleAvatar(
                                backgroundColor: Colors.amber,
                                backgroundImage: AssetImage(images[index]),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(' ${Names[index]}'),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 10,
                      color: Colors.black,
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
