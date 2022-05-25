import 'package:flutter/material.dart';
import 'package:ubelaw/widgets/orderDialog.dart';
class SellerOrderPanding extends StatefulWidget {
  const SellerOrderPanding({Key? key}) : super(key: key);

  @override
  State<SellerOrderPanding> createState() => _SellerOrderPandingState();
}

class _SellerOrderPandingState extends State<SellerOrderPanding> {
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
                }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
               ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,
              child: Image.asset("assets/images/avatar.png"),),
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
              }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,
              child: Image.asset("assets/images/avatar.png"),),
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
              }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,
              child: Image.asset("assets/images/avatar.png"),),
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
              }, sellerName: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,
              child: Image.asset("assets/images/avatar.png"),),
            title: Text("Seller Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    ],));
  }
}
