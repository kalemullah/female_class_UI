import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

bool isvideocall = true;

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
          size: 30,
        ),
        title: const Text(
          'Lesson History',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 201, 202, 202),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isvideocall = true;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      'Video Call',
                      style: TextStyle(
                          color: isvideocall ? Colors.amber : Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Container(
                      width: 100,
                      height: 5,
                      decoration: BoxDecoration(
                          color: isvideocall ? Colors.amber : Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isvideocall = false;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      'Audia Call',
                      style: TextStyle(
                          color: isvideocall ? Colors.grey : Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Container(
                      width: 100,
                      height: 5,
                      decoration: BoxDecoration(
                          color: isvideocall ? Colors.grey : Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                Image.asset('assets/shoes1.jpeg'),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Stephen N',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          'Video Call',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                        Text(
                          ' - Scheduled',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    Text(
                      '11 30 AM',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //column 1
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 244, 219, 144),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.notifications_none_rounded,
                        size: 30,
                      ),
                    ),
                    const Text('Follow'),
                  ],
                ),

                //column 2
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 244, 219, 144),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.messenger_outline_rounded,
                        size: 30,
                      ),
                    ),
                    const Text('Message'),
                  ],
                ),

                //column 3
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 244, 219, 144),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                      ),
                    ),
                    const Text('Favorite'),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 20),
            child: Text(
                'The video call class is scheduled to cover specific topics related to coding, with a focus on reviewing key sections of the codebase, discussing recent changes, and addressing any issues or challenges.'),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Class Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Monday, March 27 2023',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Total Time: 30 Mins',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tuesday, March 28 2023',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Total Time: 30 Mins',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
