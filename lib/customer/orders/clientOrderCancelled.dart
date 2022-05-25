import 'package:flutter/material.dart';

import '../../widgets/orderDialog.dart';
class ClientOrderCancelled extends StatefulWidget {
  const ClientOrderCancelled({Key? key}) : super(key: key);

  @override
  State<ClientOrderCancelled> createState() => _ClientOrderCancelledState();
}

class _ClientOrderCancelledState extends State<ClientOrderCancelled> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 3,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(
              child: Image.asset("assets/images/avatar.png"),radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 3,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(
              child: Image.asset("assets/images/avatar.png"),radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 3,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(
              child: Image.asset("assets/images/avatar.png"),radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 3,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(
              child: Image.asset("assets/images/avatar.png"),radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    ],));
  }
}
