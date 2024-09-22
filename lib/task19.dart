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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Task 19'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Bid',
                  icon: Icon(Icons.add),
                ),
                Tab(
                  text: 'Buy',
                  icon: Icon(Icons.shopping_cart),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              customHomeWidget(),
              Text('cart'),
            ],
          )),
    );
  }
}

class customHomeWidget extends StatelessWidget {
  const customHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('home');
  }
}
