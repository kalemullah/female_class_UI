import 'package:flutter/material.dart';

class Task19 extends StatefulWidget {
  const Task19({super.key});

  @override
  State<Task19> createState() => _Task19State();
}

class _Task19State extends State<Task19> {
  bool isbidSelected = true;

  void selectcolor(bool value) {
    setState(() {
      isbidSelected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Task 19'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.5),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          selectcolor(true);
                        },
                        child: Container(
                          height: 40,
                          width: 180,
                          decoration: BoxDecoration(
                              color: isbidSelected
                                  ? Colors.green
                                  : Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Center(child: Text('Place bid')),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectcolor(false);
                        },
                        child: Container(
                          height: 40,
                          width: 180,
                          decoration: BoxDecoration(
                              color: isbidSelected
                                  ? Colors.transparent
                                  : Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Center(child: Text('Buy now')),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
