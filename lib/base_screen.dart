import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/homescreen/home_screen.dart';
import 'package:news_app_ui/screens/my_feed.dart';
import 'package:news_app_ui/screens/profile.dart';
import 'package:news_app_ui/screens/utility/utils.dart';
import 'package:news_app_ui/screens/video.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

List screens = [const HomeScreen(), MyFeed(), Video(), const Profile()];

class _BaseScreenState extends State<BaseScreen> {
  int currentindex = 0;
  onchanged(value) {
    setState(() {
      currentindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: screens[currentindex],
      bottomNavigationBar: BottomBar(
        selectedIndex: currentindex,
        onTap: onchanged,
        items: const <BottomBarItem>[
          BottomBarItem(
              activeTitleColor: Colors.white,
              icon: Icon(Icons.home),
              activeColor: Colors.white,
              title: Text('Home')),
          BottomBarItem(
              icon: Icon(Icons.bookmark_border),
              activeColor: Colors.white,
              title: Text('My Feed')),
          BottomBarItem(
              icon: Icon(Icons.play_circle_fill),
              activeColor: Colors.white,
              title: Text('Video')),
          BottomBarItem(
              icon: Icon(Icons.person_outline_outlined),
              activeColor: Colors.white,
              title: Text('Profile')),
        ],
      ),
    );
  }
}
