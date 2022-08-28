import 'package:flutter/material.dart';
import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/assets/lableText.dart';
import 'package:badges/badges.dart';
import 'package:doctors_appointment/widgets/categoryBox.dart';

class PaymentConfirmation extends StatefulWidget {
  const PaymentConfirmation({Key? key}) : super(key: key);

  @override
  _PaymentConfirmationState createState() => _PaymentConfirmationState();
}

class _PaymentConfirmationState extends State<PaymentConfirmation> {
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
                text: "THANK YOU FOR BOOKING WITH US",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                    // fontStyle: FontStyle.italic,
                    )),
          ]))
        ])));
  }

  Widget line2(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.only(top: 15, bottom: 05),
        alignment: Alignment.center,
        child: Column(children: const [
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "YOUR BOOKING HAS BEEN CONFIRMED WITH DOCTOR !!!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                    // fontStyle: FontStyle.italic,
                    )),
          ]))
        ])));
  }

  Widget line3(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.only(top: 15, bottom: 05),
        alignment: Alignment.center,
        child: Column(children: const [
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "KINDLY REACH 15 MINUTES PRIOR TO YOUR APPOINTMENT !!!",
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
        color: Colors.blue,
        padding: paddingV ? const EdgeInsets.all(5) : const EdgeInsets.all(0),
        // margin: const EdgeInsets.only(top: 150.0),
        child: Center(
          child: Text(
            bText,
            softWrap: true,
            style: const TextStyle(
              color: Color.fromARGB(255, 250, 250, 255),
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
          Row(
            children: [
              Flexible(
                child: line2(context),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: line3(context),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouts.BOOKINGLIST);
                },
                child: register(
                    context, "PAYMENT SUCCESSFULL !!", 20, true, Colors.blue))
          ]),
          SizedBox(
            height: 20,
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
