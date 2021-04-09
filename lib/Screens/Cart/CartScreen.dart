import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';

class CartScreen extends StatefulWidget {
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.yellow,
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Place Order"), Icon(Icons.arrow_forward)],
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(20.0),
                    height: 80,
                    width: 100,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("Name of Restaurant"),
                          ),
                          Container(
                            child: Text("Test"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              endIndent: 10,
              indent: 10,
              color: Colors.blueGrey,
            ),
            ItemCard(),
            ItemCard(),
            Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  ///autocorrect: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.note_add,
                      color: Colors.blueGrey,
                    ),
                    hintText: 'Add Cooking Instructions',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    /*  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey, width: ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),*/
                  ),
                  onChanged: (text) {},
                )),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text("Item Total"),
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                          text: "₹100",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 2),
                          children: <TextSpan>[
                            TextSpan(
                              text: "  ₹100",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  decoration: TextDecoration.none),
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              endIndent: 10,
              indent: 10,
              color: Colors.blueGrey,
            ),
            Container(
              color: Colors.grey.shade200,
              margin: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text("Add a tip for a rider"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Valid if you pay online.All amount will be transferred to driver",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.blueGrey)),
                          child: Text(
                            "₹5",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 50,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.blueGrey)),
                          child: Text(
                            "₹10",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.blueGrey)),
                          child: Text(
                            "₹15",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        ///autocorrect: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            FontAwesome5.ticket_alt,
                            color: Colors.yellow,
                          ),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        onChanged: (text) {},
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 5,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 10),
                    child: Text("Apply"),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Item Total :",
                        style: TextStyle(color: Colors.grey),
                      ),
                      RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                            text: "₹100",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2),
                            children: <TextSpan>[
                              TextSpan(
                                text: "  ₹100",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    decoration: TextDecoration.none),
                              )
                            ]),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Charges",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("₹100", style: TextStyle(color: Colors.red)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Total Amount:",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("₹200", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Grand Total :",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("₹200", style: TextStyle(color: Colors.grey)),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Personal Details :",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "DELEVERING FOOD TO \n",
                            style: TextStyle(color: Colors.grey),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Select Address",
                                style: TextStyle(color: Colors.orange),
                              )
                            ]),
                      ),
                      Text("Change", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  /* IconData icon;
  String text;
  Function onTap;
  ItemCard(this.icon, this.text, this.onTap);*/
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 2))),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
              image:
                  DecorationImage(image: AssetImage('Assets/Food/pizza.jpg')),
            ),
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            ContantImages.Veg,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Name",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 20, right: 10),
                    child: Text(
                      "₹100",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 15,
            ),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.blueGrey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.remove),
                      Container(
                        height: 25,
                        width: 25,
                        color: Colors.blueGrey,
                        alignment: Alignment.center,
                        child: Text(
                          "1",
                        ),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text("₹100"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
