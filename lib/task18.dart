import 'package:flutter/material.dart';

class Task18 extends StatefulWidget {
  const Task18({super.key});

  @override
  State<Task18> createState() => _Task18State();
}

class _Task18State extends State<Task18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  // gradient: LinearGradient(
                  //   stops: [.1, .3, .4, .5],
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.centerRight,
                  //   colors: [Colors.red, Colors.blue, Colors.amber, Colors.green],
                  // ),
                  gradient: RadialGradient(radius: .5, colors: [
                    Colors.red,
                    // Colors.blue,
                    Colors.amber,
                    // Colors.green
                  ]))),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.amber],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
            ),
          )
        ],
      ),
    );
  }
}
