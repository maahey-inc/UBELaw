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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OverviewCard(

                cardTheme: Colors.white,
                clientName: "Client",
                date: "20/02/2022",

                buttonFunction: (){Navigator.push(context, MaterialPageRoute(builder: (c)=>ChatPageSeller()));},

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OverviewCard(

                cardTheme: Colors.white,
                clientName: "Client",
                date: "20/02/2022",

                buttonFunction: (){Navigator.push(context, MaterialPageRoute(builder: (c)=>ChatPageSeller()));},

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OverviewCard(

                cardTheme: Colors.white,
                clientName: "Client",
                date: "20/02/2022",

                buttonFunction: (){Navigator.push(context, MaterialPageRoute(builder: (c)=>ChatPageSeller()));},

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OverviewCard(

                cardTheme: Colors.white,
                clientName: "Client",
                date: "20/02/2022",

                buttonFunction: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>ChatPageSeller()));
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
