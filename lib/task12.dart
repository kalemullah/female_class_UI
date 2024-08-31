import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                  itemCount: 500,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      // childAspectRatio: ,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      color: index % 2 == 0 ? Colors.green : Colors.amber,
                      child: Center(child: Text('$index')),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
