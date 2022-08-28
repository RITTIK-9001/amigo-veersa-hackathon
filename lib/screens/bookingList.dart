import 'package:flutter/material.dart';
import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/assets/lableText.dart';
import 'package:badges/badges.dart';

import '../assets/Theme.dart';
import '../widgets/categoryBox.dart';

class BookingList extends StatefulWidget {
  const BookingList({Key? key}) : super(key: key);

  @override
  _BookingListState createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Badge(
                position: BadgePosition.topEnd(top: 7, end: -4),
                badgeContent: Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(
                  Icons.notifications_sharp,
                  color: primary,
                ),
              ),
            )
          ],
        ),
        body: getBody());
  }

  Widget logoSection(BuildContext context) {
    return (Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            InkWell(
                onTap: () {},
                child: CategoryBox(
                  title: "Welcome to Instant Health Appointment",
                  icon: Icons.favorite,
                  color: Colors.red,
                )),
          ]),
    ));
  }

  Widget line1(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.only(top: 15, bottom: 05),
        alignment: Alignment.center,
        child: Column(children: const [
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "BOOKING DETAILS",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                    // fontStyle: FontStyle.italic,
                    )),
          ]))
        ])));
  }

  Widget card1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        // height: 250,
        width: double.infinity,
        child: Card(
            elevation: 5,
            shadowColor: MaterialColors.black,
            color: MaterialColors.appColor1,
            child: Container(
                //width: 450,
                //height: 115,
                color: MaterialColors.white,
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Column(children: <Widget>[
                    Row(children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 96,
                          width: 96,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: MaterialColors.appColor1),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(0),
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(20),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Icon(Icons.favorite, color: Colors.red),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("DOCTOR: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("DATE: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("TIME: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("TYPE: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("Dr. Aditya Sharma",
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("04.09.2022",
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: const <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("11.00 AM",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: const <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("UPCOMING",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                          ],
                        ),
                      ),
                    ])
                  ]),
                ))));
  }

  Widget card2(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        // height: 250,
        width: double.infinity,
        child: Card(
            elevation: 5,
            shadowColor: MaterialColors.black,
            color: MaterialColors.appColor1,
            child: Container(
                //width: 450,
                //height: 115,
                color: MaterialColors.white,
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Column(children: <Widget>[
                    Row(children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 96,
                          width: 96,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: MaterialColors.appColor1),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(0),
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(20),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Icon(Icons.favorite, color: Colors.red),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("DOCTOR: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("DATE: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("TIME: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("TYPE: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("Dr. Sonu Kalgan",
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("28.08.2022",
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: const <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("04.00 PM",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: const <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("PAST",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                          ],
                        ),
                      ),
                    ])
                  ]),
                ))));
  }

  Widget card3(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        // height: 250,
        width: double.infinity,
        child: Card(
            elevation: 5,
            shadowColor: MaterialColors.black,
            color: MaterialColors.appColor1,
            child: Container(
                //width: 450,
                //height: 115,
                color: MaterialColors.white,
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Column(children: <Widget>[
                    Row(children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 96,
                          width: 96,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: MaterialColors.appColor1),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(0),
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(20),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Icon(Icons.favorite, color: Colors.red),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("DOCTOR: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("DATE: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("TIME: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("TYPE: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("Dr. Rittik Rana",
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("25.08.2021",
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: const <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("2.00 PM",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            Row(children: const <Widget>[
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("PAST",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: MaterialColors.buttonHoverColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                          ],
                        ),
                      ),
                    ])
                  ]),
                ))));
  }

  Widget tohome(BuildContext context, String bText, double textSize,
      bool paddingV, Color textcolor) {
    return Center(
      child: (Container(
          padding:
              paddingV ? const EdgeInsets.all(10) : const EdgeInsets.all(0),
          margin: EdgeInsets.only(top: 4),
          child: Center(
            child: Text(
              bText,
              softWrap: true,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ))),
    );
  }

  getBody() {
    return (Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Flexible(
                child: logoSection(context),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: line1(context),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: card1(context),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: card2(context),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: card3(context),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouts.HOME);
                },
                child: tohome(
                    context, "GO TO HOME PAGE >>>", 20, true, Colors.blue))
          ]),
        ])));
  }
}
