import 'package:flutter/material.dart';

class Task21 extends StatefulWidget {
  const Task21({super.key});

  @override
  State<Task21> createState() => _Task21State();
}

class _Task21State extends State<Task21> {
  int currentindex = 0;
  _changeTab(index) {
    setState(() {
      currentindex = index;
    });
  }

  List screens = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
        Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
      ],
    ),
    Center(
      child: Text(
        'Event',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Center(
      child: Text(
        'Event',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Center(
      child: Text(
        'Event',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Center(
      child: Text(
        'Event',
        style: TextStyle(color: Colors.black),
      ),
    ),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
        ],
      ),
    );
  }
}

class profile extends StatelessWidget {
  const profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Event',
      style: TextStyle(color: Colors.black),
    );
  }
}
