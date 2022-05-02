import 'package:flutter/material.dart';
class RatingTab extends StatefulWidget {
  const RatingTab({Key? key}) : super(key: key);

  @override
  State<RatingTab> createState() => _RatingTabState();
}

class _RatingTabState extends State<RatingTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:SizedBox(

        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Card(

            color: Colors.black45,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all( Radius.circular(20)),
            ),
            elevation: 15,
            child: Column(
            children: [
            Container(height: 90,margin: EdgeInsets.only(top: 60),
              child: CircleAvatar(radius: 50,backgroundColor: Colors.white,),),
            Padding(padding: EdgeInsets.all(10)),
            Text("Kamran ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.all(4)),
            Text("Karimabad Swat ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),textAlign: TextAlign.center,),

              Padding(padding: EdgeInsets.all(20)),
            Text("Reviews ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),textAlign: TextAlign.center,),
              Padding(padding: EdgeInsets.all(4)),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width/3,
                child: Row(children: [
                  Icon(Icons.star,color: Colors.amber,),
                  Icon(Icons.star,color: Colors.amber,),
                  Icon(Icons.star,color: Colors.amber,),
                  Icon(Icons.star,color: Colors.amber,),
                  Icon(Icons.star,color: Colors.amber,),
                ],),
              ),
            )
            ],
    ),
          ),
        ),
      ),);
  }
}
