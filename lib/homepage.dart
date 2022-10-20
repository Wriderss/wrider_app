import 'package:flutter/material.dart';
import 'package:wride_app/posts/post_1.dart';
import 'package:wride_app/posts/post_2.dart';
import 'package:wride_app/posts/post_3.dart';
import 'package:wride_app/screen/account.dart';
import 'package:wride_app/screen/create.dart';
import 'package:wride_app/screen/explore.dart';
import 'package:wride_app/screen/home.dart';
import 'package:wride_app/screen/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    ExplorePage(),
    CreatePage(),
    NotificationsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: "Create"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Me'),
        ],
      ),
    );
  }
}
