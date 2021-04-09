import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';

class OrdersScreen extends StatefulWidget {
  OrdersScreenState createState() => OrdersScreenState();
}

class OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _activeTabIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 7, vsync: this);
    _controller.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    setState(() {
      _activeTabIndex = _controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 10),
            height: 50.0,
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              controller: _controller,
              indicatorColor: Colors.transparent,
              indicatorPadding: EdgeInsets.only(left: 10, right: 10),
              labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
              tabs: [
                new Tab(
                  child: Container(
                    width: 50,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: _activeTabIndex == 0
                                ? Colors.deepPurple
                                : Colors.blueGrey)),
                    child: Text(
                      "All",
                      style: TextStyle(
                          fontSize: 20,
                          color: _activeTabIndex == 0
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    ),
                  ),
                ),
                new Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: _activeTabIndex == 1
                                ? Colors.deepPurple
                                : Colors.blueGrey)),
                    child: Text(
                      "Received",
                      style: TextStyle(
                          fontSize: 20,
                          color: _activeTabIndex == 1
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    ),
                  ),
                ),
                new Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: _activeTabIndex == 2
                                ? Colors.deepPurple
                                : Colors.blueGrey)),
                    child: Text(
                      "Accepted",
                      style: TextStyle(
                          fontSize: 20,
                          color: _activeTabIndex == 2
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    ),
                  ),
                ),
                new Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: _activeTabIndex == 3
                                ? Colors.deepPurple
                                : Colors.blueGrey)),
                    child: Text(
                      "Declined",
                      style: TextStyle(
                          fontSize: 20,
                          color: _activeTabIndex == 3
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    ),
                  ),
                ),
                new Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: _activeTabIndex == 4
                                ? Colors.deepPurple
                                : Colors.blueGrey)),
                    child: Text(
                      "Preparing",
                      style: TextStyle(
                          fontSize: 20,
                          color: _activeTabIndex == 4
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    ),
                  ),
                ),
                new Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: _activeTabIndex == 5
                                ? Colors.deepPurple
                                : Colors.blueGrey)),
                    child: Text(
                      "Delivered",
                      style: TextStyle(
                          fontSize: 20,
                          color: _activeTabIndex == 5
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    ),
                  ),
                ),
                new Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: _activeTabIndex == 6
                                ? Colors.deepPurple
                                : Colors.blueGrey)),
                    child: Text(
                      "Cancelled",
                      style: TextStyle(
                          fontSize: 20,
                          color: _activeTabIndex == 6
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            child: TabBarView(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
              Container(
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Food/pizza.jpg')),
                                    ),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    ContantImages.Veg,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 5, right: 10),
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 20, right: 10),
                                            child: Text(
                                              "₹100",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ]))),
              Container(
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Food/pizza.jpg')),
                                    ),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    ContantImages.Veg,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 5, right: 10),
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 20, right: 10),
                                            child: Text(
                                              "₹100",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ]))),
              Container(
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Food/pizza.jpg')),
                                    ),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    ContantImages.Veg,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 5, right: 10),
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 20, right: 10),
                                            child: Text(
                                              "₹100",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ]))),
              Container(
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Food/pizza.jpg')),
                                    ),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    ContantImages.Veg,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 5, right: 10),
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 20, right: 10),
                                            child: Text(
                                              "₹100",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ]))),
              Container(
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Food/pizza.jpg')),
                                    ),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    ContantImages.Veg,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 5, right: 10),
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 20, right: 10),
                                            child: Text(
                                              "₹100",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ]))),
              Container(
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Food/pizza.jpg')),
                                    ),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    ContantImages.Veg,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 5, right: 10),
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 20, right: 10),
                                            child: Text(
                                              "₹100",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ]))),
              Container(
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Food/pizza.jpg')),
                                    ),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    ContantImages.Veg,
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 5, right: 10),
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 20, right: 10),
                                            child: Text(
                                              "₹100",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ]))),
            ])),
      ],
    ));
  }
}
