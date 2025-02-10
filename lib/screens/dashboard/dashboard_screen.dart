import 'package:flutter/material.dart';
import 'package:instragram_clone/screens/buttom_navigation_screen/home_screen.dart';
import 'package:instragram_clone/screens/buttom_navigation_screen/post_add_screen.dart';
import 'package:instragram_clone/screens/buttom_navigation_screen/profile_screen.dart';
import 'package:instragram_clone/screens/buttom_navigation_screen/reels_screen.dart';
import 'package:instragram_clone/screens/buttom_navigation_screen/search_screen.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentScreen = 0;

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    PostAddScreen(),
    ReelsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen], // Display the current screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        iconSize: 28,
        selectedFontSize: 30,
        onTap: (value) {
          setState(() {
            currentScreen = value; // Update current screen
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: ""),
        ],
      ),
    );
  }
}
