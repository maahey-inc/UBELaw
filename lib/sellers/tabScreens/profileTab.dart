import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: [
      Stack(children: [
        Container(
          width: double.infinity,
          height: 330,
          color: Colors.black45,

        ),
        Positioned(top: 10,right: 30,
        child: Icon(Icons.settings),),
        Column(
          children: [
            Container(height: 90,margin: EdgeInsets.only(top: 60),
            child: CircleAvatar(radius: 50,backgroundColor: Colors.white,),),
            Padding(padding: EdgeInsets.all(4)),
            Text("Kamran ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.all(4)),
            Text("Karimabad Swat ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),textAlign: TextAlign.center,),

            Container(
              margin: EdgeInsets.only(top: 77),
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: 15,bottom: 5),
                      child: Text("Rides",style: TextStyle(color: Colors.black54),),
                    ),  Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text("5,000",style: TextStyle(color: Colors.black87,fontSize: 16),),
                    ),

                  ],),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: 15,bottom: 5),
                      child: Text("Reviews",style: TextStyle(color: Colors.black54),),
                    ),  Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text("5.0",style: TextStyle(color: Colors.black87,fontSize: 16),),
                    ),

                  ],)
                ],),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Card(child: Container(alignment: Alignment.topLeft,padding: EdgeInsets.all(15),
                child: Column(children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("User Information",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 16),textAlign: TextAlign.left,),
                  ),
                  Divider(color: Colors.black38,),
                  Container(
                    child: Column(children: [
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                        leading: Icon(Icons.my_location),
                        title: Text("Location"),
                        subtitle: Text("Karimabad Swat"),
                      ),
                      ListTile(

                        leading: Icon(Icons.email),
                        title: Text("Email"),
                        subtitle: Text("Karimabad@gmail.com"),
                      ),
                      ListTile(

                        leading: Icon(Icons.phone),
                        title: Text("Phone"),
                        subtitle: Text("+9234555555555"),
                      ),
                      ListTile(

                        leading: Icon(Icons.person),
                        title: Text("About Me"),
                        subtitle: Text("This is a about me link and you can know about me in this section"),
                      ),
                    ],),
                  )
                ],),),)
              ],),
            )
          ],
        )
      ],),
    ],));
  }
}
