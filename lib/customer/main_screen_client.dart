import 'package:flutter/material.dart';
import 'package:ubelaw/customer/tabScreens/accountTabClient.dart';
import 'package:ubelaw/customer/tabScreens/chatTabClient.dart';
import 'package:ubelaw/customer/tabScreens/orderTabClient.dart';
import 'package:ubelaw/customer/tabScreens/profileTabClient.dart';

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
      body: selectedIndex == 0
          ? ChatTabClient()
          : selectedIndex == 1
          ? OrderTabClient()
          :  ClientAccountTab(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),

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
