import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ubelaw/sellers/authentications/signinScreen.dart';

class SplashScreenSeller extends StatefulWidget {
  const SplashScreenSeller({Key? key}) : super(key: key);

  @override
  State<SplashScreenSeller> createState() => _SplashScreenSellerState();
}

class _SplashScreenSellerState extends State<SplashScreenSeller> {
  startTimer() {
    Timer(new Duration(seconds: 3), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => SignInScreen()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image.asset("assets/images/logo1.png"),
              ),
            ),
            Text(
              "UBELaw Seller",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
