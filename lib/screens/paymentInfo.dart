import 'package:flutter/material.dart';
import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/assets/lableText.dart';
import 'package:badges/badges.dart';
import 'package:doctors_appointment/widgets/categoryBox.dart';

import '../assets/Theme.dart';

class PaymentInfo extends StatefulWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  @override
  _PaymentInfoState createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  var isPwdVisible = true;
  int selectedValue = 0;
  static const values = <int>[0, 1, 2];
  bool _radio1 = true;
  bool _radio2 = true;
  bool _radio3 = true;
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
                text: "PAYMENT DETAILS",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                    // fontStyle: FontStyle.italic,
                    )),
          ]))
        ])));
  }

  Widget register(BuildContext context, String bText, double textSize,
      bool paddingV, Color textcolor) {
    return (Container(
        padding: paddingV ? const EdgeInsets.all(5) : const EdgeInsets.all(0),
        // margin: const EdgeInsets.only(top: 150.0),
        child: Center(
          child: Text(
            bText,
            softWrap: true,
            style: const TextStyle(
              color: Color.fromARGB(255, 64, 79, 215),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        )));
  }

  Widget skip(BuildContext context, String bText, double textSize,
      bool paddingV, Color textcolor) {
    return (Container(
        padding: paddingV ? const EdgeInsets.all(10) : const EdgeInsets.all(0),
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
        )));
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
          SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              "Services",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              width: 75,
              color: Colors.black54,
              height: 3,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "General Consultant Charges",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\u20B9 300",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Lab Charges",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\u20B9 500",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total Charges",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\u20B9 800",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              )),
          Row(
            children: [
              Flexible(
                child: RadioListTile(
                  value: 0,
                  groupValue: selectedValue,
                  title: const Text("STC Pay",
                      style: TextStyle(
                          color: MaterialColors.appColor1,
                          fontWeight: FontWeight.w800)),
                  toggleable: true,
                  onChanged: (value) => {
                    setState(() => {selectedValue = 0})
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: RadioListTile(
                  value: 1,
                  groupValue: selectedValue,
                  title: const Text("ApplePay",
                      style: TextStyle(
                          color: MaterialColors.appColor1,
                          fontWeight: FontWeight.w800)),
                  toggleable: true,
                  onChanged: (value) => {
                    setState(() => {selectedValue = 1})
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: RadioListTile(
                  value: 2,
                  groupValue: selectedValue,
                  title: const Text("PayPal",
                      style: TextStyle(
                          color: MaterialColors.appColor1,
                          fontWeight: FontWeight.w800)),
                  toggleable: true,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 2;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(children: [
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: MaterialButton(
                        hoverColor: Colors.blue,
                        textColor: Colors.black,
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AppRouts.PAYMENTCONFIRMATION);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text("PAY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15))),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
          SizedBox(
            width: 88,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouts.BOOKINGLIST);
                },
                child: register(
                    context, "SEE YOUR BOOKING DETAILS", 20, true, Colors.blue))
          ]),
        ])));
  }
}
