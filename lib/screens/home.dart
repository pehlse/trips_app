import 'package:flutter/material.dart';
import 'package:trips/widgets/profile_pic.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.place,
                          color: Colors.purple[900],
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 2.5),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: " Los Angeles, ",
                                    style: TextStyle(
                                      color: Colors.purple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    )),
                                TextSpan(
                                    text: "California",
                                    style: TextStyle(
                                      color: Colors.purple[900],
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ProfilePic(
                    'https://i.pinimg.com/originals/26/78/9e/26789e89c810065bcc629b15b42ba6f4.jpg'),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
