import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ubelaw/customer/splash_screen_client.dart';
import 'package:ubelaw/sellers/splash_screen.dart';
import 'package:ubelaw/widgets/defaultButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
/*  startTimer(){
    Timer(new Duration(seconds: 3), ()async{
      Navigator.push(context, MaterialPageRoute(builder: (c)=>SplashScreenSeller()));

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }*/
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Image.asset("assets/images/walkthrough3.png"),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200,
                child: Column(children: [

                  defaultButton(true, "Seller",(){ Navigator.push(context, MaterialPageRoute(builder: (c)=>SplashScreenSeller()));}),
                  Spacer(),
                  defaultButton(true, "Client",(){ Navigator.push(context, MaterialPageRoute(builder: (c)=>SplashScreenClient()));}),
                  Spacer()
                ],),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
