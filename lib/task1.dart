import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: const Text(
          'task1',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 350,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber[50],
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Notification')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber[50],
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          Icons.message,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Message')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber[50],
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('fav')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
