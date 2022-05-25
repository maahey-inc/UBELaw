import 'dart:core';
import 'package:flutter/material.dart';

import 'custom_surffix_icon.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({
    required this.clientName,
    required this.date,
    this.cardBackgroundColor = const Color(0xFF262A34),
    required this.cardTheme,
    required this.buttonFunction,
     this.valueHolder = 2,
  });

  final String clientName;
  final String date;

  final Color cardBackgroundColor;
  final Color cardTheme;
  final Function() buttonFunction;
  final int valueHolder;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          width: MediaQuery.of(context).size.width,
          /*decoration: BoxDecoration(
            border: Border(left: BorderSide(color: cardTheme, width: 6.0)),
          ),*/
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Title Text
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10.0, bottom: 2),
                        child: Text(
                          clientName,
                          style: TextStyle(
                            fontSize: 15,
                            color: cardTheme,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 2),
                        child: Text(
                          date,
                          style: TextStyle(
                            fontSize: 15,
                            color: cardTheme,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, bottom: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  child: Slider(
                                      value: valueHolder.toDouble(),
                                      min: 1,
                                      max: 100,
                                      divisions: 100,
                                      activeColor: Colors.white,
                                      inactiveColor: Colors.grey,
                                      label: '${valueHolder.round()}',
                                      onChanged: (double newValue) {
                                        // setState(() {
                                        //   valueHolder = newValue.round();
                                        // });
                                      },
                                      semanticFormatterCallback:
                                          (double newValue) {
                                        return '${newValue.round()}';
                                      }),
                                ),
                              ),

                            ],
                          )),
                    ),

                    // Content in the middle of the Card

                    // Button at the bottom of the Card
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 50,
                  height: 70,
                  child: GestureDetector(
                      onTap: buttonFunction,
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
