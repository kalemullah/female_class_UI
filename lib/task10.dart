import 'package:flutter/material.dart';

class Task10 extends StatelessWidget {
  const Task10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Expanded body '),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Expanded(
              // flex: 3,
              child: Container(
                color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.tealAccent,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
