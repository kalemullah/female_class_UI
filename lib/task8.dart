import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testing1/task6.dart';
import 'package:testing1/task7.dart';

class Task8 extends StatelessWidget {
  const Task8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onLongPress: () {
                print('someone long press');
              },
              onPressed: () {
                print('someone press');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
              ),
              // const ButtonStyle(
              //     backgroundColor: WidgetStateColor.transparent),
              child: Text('Button')),
          SizedBox(height: 10),
          // TextButton(
          //   onPressed: () {},
          //   child: Text('Text Button'),
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.blue),
          //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(30))),
          //   ),
          // ),

          TextButton(
            child: Text(
              "Button",
              style: TextStyle(fontSize: 25),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (v) {
                return Task6();
              }));
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                elevation: 2,
                backgroundColor: Colors.amber),
          ),

          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (v) {
                return Task7();
              }));
              if (kDebugMode) {
                print('custom button pressed');
              }
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(child: Icon(Icons.link_outlined)),
            ),
          )
        ],
      )),
    );
  }
}
