import 'package:flutter/material.dart';
import 'package:testing1/major_task/home_screen.dart';
import 'package:testing1/major_task/notification_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 0;
  List screens = [
    HomeScreen(),
    NotificationsScreen(),
    Center(
        child: Text(
      'History',
      style: TextStyle(color: Colors.black),
    )),
    Center(
        child: Text(
      'User',
      style: TextStyle(color: Colors.black),
    )),
  ];
  _changeTab(index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.96),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
