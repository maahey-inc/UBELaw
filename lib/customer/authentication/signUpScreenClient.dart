import 'package:flutter/material.dart';
import 'package:ubelaw/customer/main_screen_client.dart';

import '../../sellers/main_screen.dart';
import '../../utilities/size_config.dart';
import '../../widgets/defaultButton.dart';
import '../../widgets/edittexts.dart';

class SignUpScreenUser extends StatefulWidget {
  const SignUpScreenUser({Key? key}) : super(key: key);

  @override
  State<SignUpScreenUser> createState() => _SignUpScreenUserState();
}

class _SignUpScreenUserState extends State<SignUpScreenUser> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController fnameController = new TextEditingController();
  TextEditingController lnameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  String phoneText = "";
  String fnameText = "";
  String lnameText = "";
  String emailText = "";
  String passwordText = "";
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/logo_app.png"),
              ),
              const  SizedBox(height: 10),
              const Text("Register as a Client",style: TextStyle(fontSize: 26,color: Colors.black54,fontWeight: FontWeight.bold),),
              /* DefaultButton(
                isInfinity: true,
                clr: Colors.black54,
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                  }
                },
              ),*/


              Builder(
                builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: fnameController,label: "First Name",hint: "Enter your First Name",svg: "assets/icons/User.svg",textInputType: TextInputType.name),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: lnameController,label: "Last Name",hint: "Enter your Last Name",svg: "assets/icons/User.svg",textInputType: TextInputType.name),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: phoneController,label: "Phone Number",hint: "Enter your Phone Number",svg: "assets/icons/Phone.svg",textInputType: TextInputType.number),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: emailController,label: "Email Address",hint: "Enter your Email Address",svg: "assets/icons/Lock.svg",textInputType: TextInputType.emailAddress),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(
                            controller: passwordController,obscureText:true,label: "Password",hint: "Enter your First Name Password",svg: "assets/icons/Lock.svg",textInputType: TextInputType.text),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),

                        child: Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {

                              },
                            ),
                            Text("Remember me"),
                            Spacer(),
                            // Text(
                            //   "Forgot Password",
                            //   style: TextStyle(decoration: TextDecoration.underline),
                            // )
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      defaultButton(true,"Continue",(){ Navigator.push(context, MaterialPageRoute(builder: (c)=>MainScreenClient()));}),

                      SizedBox(height: getProportionateScreenHeight(40)),
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
