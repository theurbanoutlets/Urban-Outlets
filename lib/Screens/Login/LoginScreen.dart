import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Animation/FadeAnimation.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';
//import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool Emailvalidation = false, Passwordvalidation = false;
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
                    //redirect to homepage
                    Navigator.pushNamed(context, '/BottomNavigationBarPage');
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
                          "Login",
                          style: TextStyle(
                              fontSize: LoginScreenconst.Loginfont,
                              fontFamily: LoginScreenconst.Loginfontfamily,
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
                            controller: EmailController,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black),
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.mail, color: Colors.black),
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
                        Navigator.of(context)
                            .pushNamed('/ForgetPasswordScreen');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Forget Password ?",
                          style: TextStyle(
                              fontSize: LoginScreenconst.CreateAccountfont,
                              fontFamily: LoginScreenconst.Loginfontfamily,
                              foreground: Paint()
                                ..shader = LinearGradient(
                                  colors: <Color>[
                                    Colors.black,
                                    Colors.grey.shade400
                                  ],
                                ).createShader(
                                    Rect.fromLTWH(20.0, 20.0, 200.0, 70.0)),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                FadeAnimationTTOB(
                  5,
                  Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 30),
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {}
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors
                                .black, //HexColor(LoginScreenconst.Loginbtncolor),
                            fontSize: LoginScreenconst.Loginbtnfont,
                            fontFamily: LoginScreenconst.Loginbtnfontfamily,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FadeAnimationTTOB(
                      6,
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/SignUpScreen');
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 10, right: 20, bottom: 20),
                          child: RichText(
                            text: TextSpan(
                                text: "Don't Have an account ? ",
                                style: TextStyle(
                                    fontSize:
                                        LoginScreenconst.CreateAccountfont,
                                    fontFamily:
                                        LoginScreenconst.Loginfontfamily,
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
                                      text: "Register",
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
                          ),
                        ),
                      )),
                ),
                FadeAnimationTTOB(
                  7,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          LoginScreenconst.facebookicon,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          LoginScreenconst.Googleicon,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
