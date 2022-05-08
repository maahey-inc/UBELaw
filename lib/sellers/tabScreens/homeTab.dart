import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ubelaw/sellers/authentications/signupScreen.dart';

import '../../widgets/OverviewCard.dart';
import '../chatScreenSeller.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(top: 4.0),
                child: Card(
                  shadowColor: Colors.blueGrey,
                  elevation: 5,
                  color: Color(0xFF262A34),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 1.1,
                    // decoration: BoxDecoration(
                    //   border: Border(
                    //       left: BorderSide(color: Colors.black54, width: 6.0)),
                    // ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 60,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Kamran ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Row(

                                    children: [
                                      Text(
                                        "4.9 ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      shadowColor: Colors.blueGrey,
                      elevation: 5,
                      color: Color(0xFF262A34),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width/3.4,
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "Earnings",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "20 \$",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: Colors.blueGrey,
                      elevation: 5,
                      color: Color(0xFF262A34),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width/3.4,
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "Active\nOrders",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: Colors.blueGrey,
                      elevation: 5,
                      color: Color(0xFF262A34),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width/3.4,
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "Cancelled\nOrders",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: OverviewCard(
                  cardTheme: Colors.white,
                  clientName: "Client",
                  date: "20/02/2022",
                  buttonFunction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => ChatPageSeller()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: OverviewCard(
                  cardTheme: Colors.white,
                  clientName: "Client",
                  date: "20/02/2022",
                  buttonFunction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => ChatPageSeller()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: OverviewCard(
                  cardTheme: Colors.white,
                  clientName: "Client",
                  date: "20/02/2022",
                  buttonFunction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => ChatPageSeller()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: OverviewCard(
                  cardTheme: Colors.white,
                  clientName: "Client",
                  date: "20/02/2022",
                  buttonFunction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => ChatPageSeller()));
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
