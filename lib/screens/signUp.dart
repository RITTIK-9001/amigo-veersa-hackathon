import 'package:flutter/material.dart';
import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/assets/lableText.dart';
import 'package:badges/badges.dart';

import '../widgets/categoryBox.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

  Widget input1(BuildContext context, title, hint, suffix) {
    var textField = TextField(
      decoration: InputDecoration(
          hintText: "NAME",
          filled: true,
          suffixIcon: Icon(Icons.account_circle_sharp),
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(color: Colors.white, width: 1))),
    );
    return (Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[Expanded(child: textField)],
          ),
        ])));
  }

  Widget input2(BuildContext context, title, hint, suffix) {
    var textField = TextField(
      decoration: InputDecoration(
          hintText: "alexXander21@gmail.com",
          filled: true,
          suffixIcon: Icon(Icons.account_circle_sharp),
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(color: Colors.white, width: 1))),
    );
    return (Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[Expanded(child: textField)],
          ),
        ])));
  }

  Widget input3(BuildContext context, title, hint, suffix) {
    var textField = TextField(
      decoration: InputDecoration(
          hintText: "9999999999",
          filled: true,
          suffixIcon: Icon(Icons.account_circle_sharp),
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(color: Colors.white, width: 1))),
    );
    return (Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[Expanded(child: textField)],
          ),
        ])));
  }

  Widget line1(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.only(top: 15, bottom: 05),
        alignment: Alignment.center,
        child: Column(children: const [
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "WELCOME!! REGISTER YOURSELF",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                    // fontStyle: FontStyle.italic,
                    )),
          ]))
        ])));
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
                child: input1(context, LableText.NAME, LableText.NAME, false),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: input2(context, LableText.EMAIL, LableText.EMAIL, false),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: input3(
                    context, LableText.MOBILE_NUM, LableText.MOBILE_NUM, false),
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
                          Navigator.pushNamed(context, AppRouts.VERIFICATION);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text("VERIFY OTP",
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
                          Navigator.pushNamed(context, AppRouts.HOME);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text("SIGN UP THROUGH GOOGLE",
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
        ])));
  }
}
