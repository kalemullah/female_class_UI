import 'package:flutter/material.dart';
import 'dart:math' as math;

class Task11 extends StatelessWidget {
  Task11({super.key});
  List<String> Names = [
    'najeeba',
    'baji',
    'afridi',
    'linta',
    'mehek',
    'afridi',
    'linta',
    'mehek',
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
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined),
        title: Text('Instagram'),
        actions: [
          // Icon(Icons.send_outlined),
          Transform.rotate(
            angle: 160 * math.pi / 90,
            child: Icon(Icons.send_outlined),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Stories',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(Icons.play_arrow),
                    SizedBox(width: 5),
                    Text('Watch All',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Container(
                height: 87,
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
          Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 500,
                      // color: Colors.teal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(images[index]),
                                    ),
                                    SizedBox(width: 10),
                                    Text(Names[index]),
                                  ],
                                ),
                                Icon(Icons.more_vert_outlined),
                              ],
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                images[index],
                                height: 400,
                                width: 350,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
