import 'package:flutter/material.dart';
import 'package:ubelaw/sellers/tabScreens/chatTab.dart';
import 'package:ubelaw/sellers/tabScreens/homeTab.dart';

import 'tabScreens/profileTab.dart';
import 'tabScreens/ratingTab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedIndex == 0
          ? HomeTab()
          : selectedIndex == 1
              ? ChatTab()
              : selectedIndex == 2
                  ? RatingTab()
                  : ProfileTab(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Ratings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 14),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
