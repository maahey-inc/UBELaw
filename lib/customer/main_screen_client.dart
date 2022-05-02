import 'package:flutter/material.dart';
import 'package:ubelaw/customer/tabScreens/chatTabClient.dart';
import 'package:ubelaw/customer/tabScreens/homeTabClient.dart';
import 'package:ubelaw/customer/tabScreens/profileTabClient.dart';
import 'package:ubelaw/customer/tabScreens/ratingTabClient.dart';

class MainScreenClient extends StatefulWidget {
  const MainScreenClient({Key? key}) : super(key: key);

  @override
  State<MainScreenClient> createState() => _MainScreenClientState();
}

class _MainScreenClientState extends State<MainScreenClient>
     {

  int selectedIndex=0;

  void onClickItems(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  selectedIndex==0?HomeTabClient():selectedIndex==1?
        ChatTabClient():selectedIndex==2?
        RatingTabClient():
        ProfileTabClient(),
      bottomNavigationBar: BottomNavigationBar(
        items: const[
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
        onTap: onClickItems,
      ),
    );
  }
}
