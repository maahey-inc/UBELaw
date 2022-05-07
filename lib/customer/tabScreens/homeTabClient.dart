import 'dart:async';

import 'package:flutter/material.dart';


class HomeTabClient extends StatefulWidget {
  const HomeTabClient({Key? key}) : super(key: key);

  @override
  State<HomeTabClient> createState() => _HomeTabClientState();
}

class _HomeTabClientState extends State<HomeTabClient> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Align(
          alignment: Alignment.bottomCenter,
          child:  Container(
            height: MediaQuery.of(context).size.height/6,

            child: Card(

              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
              ),
              elevation: 15,
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(
                        0,
                        0,
                        0,
                        0.15,
                      ),
                      blurRadius: 25.0,
                    ),
                  ],
                  color: Colors.black54,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Hero(
                    tag: "search",
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "Enter Destination",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
