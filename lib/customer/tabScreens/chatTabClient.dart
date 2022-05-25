import 'package:flutter/material.dart';
import 'package:ubelaw/customer/chatScreenClient.dart';

import '../../widgets/OverviewCardClient.dart';

class ChatTabClient extends StatefulWidget {
  const ChatTabClient({Key? key}) : super(key: key);

  @override
  State<ChatTabClient> createState() => _ChatTabClientState();
}

class _ChatTabClientState extends State<ChatTabClient> {
  TextEditingController? msgController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Column(
        children: [


          SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: OverviewCardClient(
                  cardTheme: Colors.white,
                  sellerName: "Seller",
                  date: "20/02/2022",
                  buttonFunction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) =>const ChatScreenClient()));
                  },
                ),
              ),     Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: OverviewCardClient(
                  cardTheme: Colors.white,
                  sellerName: "Seller",
                  date: "20/02/2022",
                  buttonFunction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) =>const ChatScreenClient()));
                  },
                ),
              ),     Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: OverviewCardClient(
                  cardTheme: Colors.white,
                  sellerName: "Seller",
                  date: "20/02/2022",
                  buttonFunction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) =>const ChatScreenClient()));
                  },
                ),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: OverviewCardClient(
                    cardTheme: Colors.white,
                    sellerName: "Seller",
                    date: "20/02/2022",
                    buttonFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const ChatScreenClient()));
                    },
                  ),
                ),
              ],),
          )





        ],
      ),
    );
  }
}

