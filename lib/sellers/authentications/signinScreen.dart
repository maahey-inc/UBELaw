
import 'package:flutter/material.dart';
import 'package:ubelaw/sellers/authentications/signupScreen.dart';
import 'package:ubelaw/sellers/main_screen.dart';

import '../../utilities/size_config.dart';
import '../../widgets/defaultButton.dart';
import '../../widgets/edittexts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}


class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


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
              const Text("Login as a Seller",style: TextStyle(fontSize: 26,color: Colors.black54,fontWeight: FontWeight.bold),),
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
                        child: buildTextFormField(controller: emailController,label: "Email Address",hint: "Enter your Email Address",svg: "assets/icons/Lock.svg",textInputType: TextInputType.emailAddress),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(
                            controller: passwordController,obscureText:true,label: "Password",hint: "Enter your Password",svg: "assets/icons/Lock.svg",textInputType: TextInputType.text),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),


                      Row(
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
                      SizedBox(height: getProportionateScreenHeight(20)),
                      defaultButton(true,"Continue",(){ Navigator.push(context, MaterialPageRoute(builder: (c)=>MainScreen()));}),
                      SizedBox(height: 25),
                      defaultButton(true,"Register",(){ Navigator.push(context, MaterialPageRoute(builder: (c)=>SignUpScreen()));}),

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
