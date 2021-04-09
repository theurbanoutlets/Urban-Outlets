import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  child: ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.color),
                    child: Image.asset(
                      'Assets/Dashboard/restaurant.jpg',
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new AssetImage('Assets/AppLogo/owner.jpg'),
                          ),
                          //  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Guest User",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          "GuestUser@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomListTile(Icons.language, "Languages", () {}),
            CustomListTile(Icons.headset, "Support", () {}),
            CustomListTile(Icons.notifications, "Notifications", () {}),
            CustomListTile(FontAwesome5.truck, "Recent Orders", () {}),
            CustomListTile(Icons.power_settings_new, "Login", () {}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: InkWell(
          splashColor: Colors.orange,
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade400))),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Colors.blueGrey,
                      size: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 17.0,
                        ),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          )),
    );
  }
}
