import 'package:flutter/material.dart';
import 'package:ubelaw/sellers/authentications/registration5.dart';

import '../../utilities/size_config.dart';
import '../../widgets/defaultButton.dart';
import '../../widgets/edittexts.dart';
class Registration4 extends StatefulWidget {
  const Registration4({Key? key}) : super(key: key);

  @override
  State<Registration4> createState() => _Registration4State();
}

class _Registration4State extends State<Registration4> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = new TextEditingController();
  TextEditingController priceController = new TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:  [
              const SizedBox(height: 10),

              const  SizedBox(height: 10),
              Container(width:MediaQuery.of(context).size.width/1.2,child: const Text("Normal",textAlign: TextAlign.left,style: TextStyle(fontSize: 26,color: Colors.black54,fontWeight: FontWeight.bold,),)),
            Divider(color: Colors.black54,height: 5,endIndent: 20,),
              Builder(
                builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      SizedBox(height: 40),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: nameController,label: "About Package",hint: "Tell us About Package ",svg: "assets/icons/package.svg",textInputType: TextInputType.name,maxLine: 15),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: priceController,label: "Price",hint: "Enter Price",svg: "assets/icons/price.svg",textInputType: TextInputType.emailAddress),
                      ),
                      SizedBox(height: 10),


                      SizedBox(height: 40),
                       defaultButton(true,"Next",(){ Navigator.push(context, MaterialPageRoute(builder: (c)=>Registration5()));}),

                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
