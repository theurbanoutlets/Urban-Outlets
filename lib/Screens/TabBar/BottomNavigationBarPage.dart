import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:gurgaon_food_mall/Screens/Cart/CartScreen.dart';
import 'package:gurgaon_food_mall/Screens/HomeScreen/HomeScreen.dart';
import 'package:gurgaon_food_mall/Screens/Orders/OrdersScreen.dart';
import 'package:gurgaon_food_mall/Screens/Profile/ProfileScreen.dart';
import 'package:gurgaon_food_mall/Screens/Search/SearchScreen.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';

class BottomNavigationBarPage extends StatefulWidget {
  final int Currentindex;
  BottomNavigationBarPage({Key key, this.Currentindex}) : super(key: key);
  @override
  BottomNavigationBarPageState createState() => BottomNavigationBarPageState();
}

class BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  // Properties & Variables needed
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentTab = 2; // to keep track of active tab index
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  bool disableappbar = true;
  String Appbarname =
      BottomTabbarScreenConst.HomeScreenAppbar; // Our first view in viewport
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.Currentindex != null) {
      switch (widget.Currentindex) {
        case 0:
          return setState(() {
            currentScreen = OrdersScreen();
            currentTab = 0;
            Appbarname = BottomTabbarScreenConst.OrderAppbar;
            disableappbar = false;
          });
        case 1:
          return setState(() {
            currentScreen = SearchScreen();
            currentTab = 1;
            Appbarname = BottomTabbarScreenConst.SearchAppbar;
            disableappbar = false;
          });
        case 2:
          return setState(() {
            currentScreen = HomeScreen();
            currentTab = 2;
            disableappbar = true;
          });
        case 3:
          return setState(() {
            currentScreen = CartScreen();
            currentTab = 3;
            Appbarname = BottomTabbarScreenConst.CartAppbar;
            disableappbar = false;
          });
        case 4:
          return setState(() {
            currentScreen = ProfileScreen();
            currentTab = 4;
            disableappbar = true;
          });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      key: _scaffoldKey,
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: disableappbar == true
          ? null
          : PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: AppBar(
                title: Container(
                  child: Text(
                    Appbarname,
                    style: TextStyle(
                        fontSize: BottomTabbarScreenConst.appbarfont,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                backgroundColor: Colors.blueGrey,
                automaticallyImplyLeading: false,
                centerTitle: true,
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /*  Visibility(
                visible: menubar,
                child: Container(
                    child: FlatButton(
                        onPressed: () {
                          _scaffoldKey.currentState.openDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ))),
              ),
              Visibility(
                visible: AddMember,
                child: Container(
                    child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/MemberAdd');
                  },
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                )),
              ),
              Visibility(
                visible: AddBusiness,
                child: Container(
                    child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/BusinessAdd');
                  },
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                )),
              ),*/
                  ],
                ),
                actions: <Widget>[
                  /* Visibility(
              visible: NotificationIcon,
              child: Container(
                  width: 50,
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/NotificationPage');
                      },
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ))),
            )*/
                ],
              ),
            ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: BottomAppBar(
            color: Colors.blueGrey,
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 10,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            OrdersScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                        Appbarname = BottomTabbarScreenConst.OrderAppbar;
                        disableappbar = false;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesome5.truck,
                          size: 20,
                          color: currentTab == 0 ? Colors.green : Colors.white,
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.green : Colors.white,
                              fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 10,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            SearchScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                        Appbarname = BottomTabbarScreenConst.SearchAppbar;
                        disableappbar = false;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: currentTab == 1 ? Colors.green : Colors.white,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.green : Colors.white,
                              fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 10,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            HomeScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                        disableappbar = true;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 2 ? Colors.green : Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.green : Colors.white,
                              fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 10,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            CartScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                        Appbarname = BottomTabbarScreenConst.CartAppbar;
                        disableappbar = false;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.shopping_cart,
                          color: currentTab == 3 ? Colors.green : Colors.white,
                        ),
                        Text(
                          "Cart",
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.green : Colors.white,
                              fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 10,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            ProfileScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 4;
                        disableappbar = true;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 4 ? Colors.green : Colors.white,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color:
                                  currentTab == 4 ? Colors.green : Colors.white,
                              fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
