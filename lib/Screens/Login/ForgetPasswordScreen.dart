import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';
//import 'package:hexcolor/hexcolor.dart';

class ForgetPasswordScreen extends StatefulWidget {
  ForgetPasswordScreenState createState() => ForgetPasswordScreenState();
}

class ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController EmailController = TextEditingController();
  bool Emailvalidation = false;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.white, Colors.black],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 20.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/LoginScreen');
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 50, left: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 100, left: 10, right: 10),
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(
                          fontSize: ForgetPasswordScreenconst.FPtitle,
                          fontFamily: ForgetPasswordScreenconst.FPfontfamily,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: <Color>[
                                Colors.black,
                                Colors.red.shade200
                              ],
                            ).createShader(
                                Rect.fromLTWH(50.0, 100.0, 200.0, 70.0))),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      "Please enter your email address",
                      style: TextStyle(
                          fontSize: ForgetPasswordScreenconst.FPtitle2,
                          fontFamily: ForgetPasswordScreenconst.FPfontfamily,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: <Color>[
                                Colors.black,
                                Colors.blueGrey.shade500
                              ],
                            ).createShader(
                                Rect.fromLTWH(50.0, 100.0, 200.0, 70.0))),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      "you will received new password on your register email address.Please check your email",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: ForgetPasswordScreenconst.FPDescription,
                          fontFamily: ForgetPasswordScreenconst.FPfontfamily,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white70,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: EmailController,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail, color: Colors.black),
                            border: InputBorder.none,
                            focusColor: Colors.deepPurple,
                            hintText: Emailvalidation == true
                                ? "Please Enter Email"
                                : "Email",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 15.0),
                            hintStyle: Emailvalidation == true
                                ? TextStyle(color: Colors.red)
                                : TextStyle(
                                    color: Colors.black,
                                  ),
                            fillColor: Colors.deepPurple),
                        validator: (val) {
                          if (val.isEmpty) {
                            // return "Enter Email";
                            setState(() {
                              Emailvalidation = true;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 30),
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      /* if (_formKey.currentState.validate()) {}*/
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors
                              .black, //HexColor(LoginScreenconst.Loginbtncolor),
                          fontSize: LoginScreenconst.Loginbtnfont,
                          fontFamily: LoginScreenconst.Loginbtnfontfamily,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
