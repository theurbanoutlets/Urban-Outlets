import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';

class RestaurantDetailScreen extends StatefulWidget {
  RestaurantDetailScreenState createState() => RestaurantDetailScreenState();
}

class RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  child: Image.asset(
                    'Assets/Dashboard/resBanner.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 50, left: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    )),
                Positioned.fill(
                  top: 180,
                  left: 10,
                  right: 10,
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "Name of Restaurant ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                Icons.location_on,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                              child: Text(
                                "View on Map",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 15),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Icon(Icons.share), Text("Share")],
                  ),
                  Column(
                    children: [Icon(Icons.call), Text("Contact")],
                  ),
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "4.5",
                            style: TextStyle(color: Colors.black),
                            children: <WidgetSpan>[
                              WidgetSpan(
                                  child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ))
                            ]),
                      ),
                      Text("Reviews")
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Restaurant's Recommendations",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(child: Text("Non Veg")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(child: Text("Veg")),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.blueGrey,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Restaurant Address",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Test",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.blueGrey,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Delivery in 10-15 minutes,Live tracking is available.",
                style: TextStyle(color: Colors.orange),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "10.00% off on all orders",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.blueGrey,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Opening Time",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                      Container(
                        child: Text(
                          "7:15:00 PM",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Closing Time",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                      Container(
                        child: Text(
                          "10:15:00 PM",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.blueGrey,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Non Veg",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.only(bottom: 20),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return ItemCard();
                }),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Veg",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.only(bottom: 60),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return ItemCard();
                }),
            Container(
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text("What People are saying?"),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.blueGrey,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'Assets/Profile/myProfile.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Name"),
                              ),
                              Container(
                                child: Text("description"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: RichText(
                                text: TextSpan(
                                    text: "4.5",
                                    style: TextStyle(color: Colors.black),
                                    children: <WidgetSpan>[
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ))
                                    ]),
                              ),
                            ),
                            Container(
                              child: Text("27 jan 2021"),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: RaisedButton(
                      color: Colors.blueGrey,
                      child: Text(
                        "View more Reviews",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
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
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
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
              margin: EdgeInsets.only(left: 10, bottom: 20),
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
            margin: EdgeInsets.only(bottom: 10, right: 10),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              "Add +",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
