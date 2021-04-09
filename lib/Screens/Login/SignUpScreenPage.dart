import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Animation/FadeAnimation.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';
//import 'package:hexcolor/hexcolor.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController NameController = TextEditingController();
  TextEditingController PhoneNoController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool Namevalidation = false,
      PhoneNovalidation = false,
      Emailvalidation = false,
      Passwordvalidation = false;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  //redirect to homepage
                },
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 50, right: 20),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: FadeAnimationTTOB(
                    2,
                    Container(
                      margin: EdgeInsets.only(
                        top: 100,
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: SignUpScreenconst.SignUpfont,
                            fontFamily: SignUpScreenconst.SignUpfontfamily,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..shader = LinearGradient(
                                colors: <Color>[
                                  Colors.black,
                                  Colors.red.shade200
                                ],
                              ).createShader(
                                  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
                      ),
                    )),
              ),
              FadeAnimationTTOB(
                  3,
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white70,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: NameController,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black),
                          decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.person, color: Colors.black),
                              border: InputBorder.none,
                              focusColor: Colors.deepPurple,
                              hintText: Namevalidation == true
                                  ? "Please Enter Name"
                                  : "Name",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              hintStyle: Namevalidation == true
                                  ? TextStyle(color: Colors.red)
                                  : TextStyle(
                                      color: Colors.black,
                                    ),
                              fillColor: Colors.deepPurple),
                          validator: (val) {
                            if (val.isEmpty) {
                              // return "Enter Email";
                              setState(() {
                                Namevalidation = true;
                              });
                            }
                          },
                        ),
                        Divider(
                          thickness: 5,
                        ),
                        TextFormField(
                          controller: PhoneNoController,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black),
                          decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.phone, color: Colors.black),
                              border: InputBorder.none,
                              focusColor: Colors.deepPurple,
                              hintText: PhoneNovalidation == true
                                  ? "Please Enter PhoneNo"
                                  : "PhoneNo",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              hintStyle: PhoneNovalidation == true
                                  ? TextStyle(color: Colors.red)
                                  : TextStyle(
                                      color: Colors.black,
                                    ),
                              fillColor: Colors.deepPurple),
                          validator: (val) {
                            if (val.isEmpty) {
                              // return "Enter Email";
                              setState(() {
                                PhoneNovalidation = true;
                              });
                            }
                          },
                        ),
                        Divider(
                          thickness: 5,
                        ),
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
                        Divider(
                          thickness: 5,
                        ),
                        TextFormField(
                          controller: PasswordController,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black),
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.vpn_key, color: Colors.black),
                              border: InputBorder.none,
                              hintText: Passwordvalidation == true
                                  ? "Please Enter Password"
                                  : "Password",
                              hintStyle: Passwordvalidation == true
                                  ? TextStyle(color: Colors.red)
                                  : TextStyle(
                                      color: Colors.black,
                                    ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              focusColor: Colors.deepPurple),
                          validator: (val) {
                            if (val.isEmpty) {
                              //return "Enter Password";
                              setState(() {
                                Passwordvalidation = true;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  )),
              FadeAnimationTTOB(
                  4,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/LoginScreen');
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: RichText(
                          text: TextSpan(
                              text: "Already Have Account ? ",
                              style: TextStyle(
                                  fontSize: SignUpScreenconst.CreateAccountfont,
                                  fontFamily:
                                      SignUpScreenconst.CreateAccountfontfamily,
                                  foreground: Paint()
                                    ..shader = LinearGradient(
                                      colors: <Color>[
                                        Colors.black,
                                        Colors.red.shade200
                                      ],
                                    ).createShader(
                                        Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Login",
                                    style: TextStyle(
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                          colors: <Color>[
                                            Colors.black,
                                            Colors.blue.shade400
                                          ],
                                        ).createShader(Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0)),
                                    )),
                              ]),
                        )),
                  )),
              FadeAnimationTTOB(
                5,
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, bottom: 50, top: 50),
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {}
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors
                              .black, // HexColor(SignUpScreenconst.SignUpbtncolor),
                          fontSize: SignUpScreenconst.SignUpbtnfont,
                          fontFamily: SignUpScreenconst.SignUpfontfamily,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
