
import 'package:flutter/material.dart';
import 'package:ubelaw/widgets/defaultButton.dart';


import '../sellers/main_screen.dart';

class ConfirmDialog extends StatefulWidget {
  final Function() pressYes;
  final Function() pressNo;
  final String title;
  final String message;
  ConfirmDialog(
      {required this.pressNo,
      required this.pressYes,
      required this.title,
      required this.message});

  @override
  _ConfirmDialogState createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<ConfirmDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  Tween<double> opacityTween = Tween<double>(begin: 0.0, end: 1.0);
  Tween<double> marginTopTween = Tween<double>(begin: 300, end: 280);
  late Animation<double> marginTopAnimation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    marginTopAnimation = marginTopTween.animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacityTween.animate(controller),
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 230),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.black87,
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Center(
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      widget.message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),


                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: defaultButton(true, "OK",  widget.pressYes),
                  //   child: WebViewPlus(
                  //     javascriptMode: JavascriptMode.unrestricted,
                  //     onWebViewCreated: (controller){
                  //       controller.loadUrl("assets/webpages/index.html");
                  //     },
                  //     javascriptChannels: Set.from([
                  //       JavascriptChannel(name: 'Captcha', onMessageReceived: (JavascriptMessage message){
                  //         Navigator.push(context, MaterialPageRoute(builder: (c)=>MainScreen()));
                  //       })
                  //     ]),
                  //   )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
