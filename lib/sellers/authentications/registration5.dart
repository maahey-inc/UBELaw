
import 'package:flutter/material.dart';
import 'package:ubelaw/sellers/main_screen.dart';
import '../../widgets/confirmDialog.dart';
import '../../widgets/defaultButton.dart';
import '../../widgets/edittexts.dart';

class Registration5 extends StatefulWidget {
  const Registration5({Key? key}) : super(key: key);

  @override
  State<Registration5> createState() => _Registration5State();
}


class _Registration5State extends State<Registration5> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = new TextEditingController();
  TextEditingController priceController = new TextEditingController();

  bool checkBoxVal = false;

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
            children: [
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: const Text(
                    "Debutant",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Divider(
                color: Colors.black54,
                height: 5,
                endIndent: 20,
              ),
              Builder(
                builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: buildTextFormField(
                            controller: nameController,
                            label: "About Package",
                            hint: "Tell us About Package ",
                            svg: "assets/icons/package.svg",
                            textInputType: TextInputType.name,
                            maxLine: 15),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: buildTextFormField(
                            controller: priceController,
                            label: "Price",
                            hint: "Enter Price",
                            svg: "assets/icons/price.svg",
                            textInputType: TextInputType.emailAddress),
                      ),
                      SizedBox(height: 10),

                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Checkbox(
                                  value: checkBoxVal,
                                  onChanged: ((val) {
                                    setState(() {
                                      checkBoxVal = val!;
                                    });
                                  }),


                                ),
                                Text(
                                  "I'm not a robot",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                SizedBox(height:50,width: 50,child: Image.asset("assets/images/recaptcha.png",))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      checkBoxVal
                          ? defaultButton(true, "Next", () {
                              showDialog(
                                context: context,
                                builder: (_) => ConfirmDialog(
                                    pressYes: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (c) => MainScreen()));
                                    },
                                    pressNo: () {
                                      Navigator.of(context).pop();
                                    },
                                    title: "Popup",
                                    message:
                                        "We received your request and we are processing it"),
                              );
                            })
                          : Container(),
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
