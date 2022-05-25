import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ubelaw/customer/authentication/signinScreenClient.dart';
import 'package:ubelaw/sellers/main_screen.dart';

class SplashScreenClient extends StatefulWidget {
  const SplashScreenClient({Key? key}) : super(key: key);

  @override
  State<SplashScreenClient> createState() => _SplashScreenClientState();
}

class _SplashScreenClientState extends State<SplashScreenClient> {
  startTimer(){
    Timer(new Duration(seconds: 3), ()async{
      Navigator.push(context, MaterialPageRoute(builder: (c)=>SignInScreenClient()));
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
                child: Image.asset("assets/images/logo_app.png"),
              ),
            ),
            Text("UBELaw Client",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
,color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
