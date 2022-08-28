import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:doctors_appointment/assets/Theme.dart';
import 'package:doctors_appointment/assets/lableText.dart';
import 'package:doctors_appointment/config/appRoutes.dart';

import '../theme/colors.dart';
// import 'package:doctors_appointment/widgets/header.dart';

@override
class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  VerificationState createState() => VerificationState();
}

class VerificationState extends State<Verification> {
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
      body: getBody(),
    );
  }

  // Widget input1(BuildContext context, title, hint, suffix) {
  //   var textField = TextField(
  //     decoration: InputDecoration(
  //         hintText: hint,
  //         filled: true,
  //         suffixIcon: suffix ? const Icon(Icons.location_on) : null,
  //         fillColor: MaterialColors.white,
  //         contentPadding:
  //             const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  //         enabledBorder: const OutlineInputBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(2)),
  //             borderSide:
  //                 BorderSide(color: MaterialColors.white)),
  //         focusedBorder: const OutlineInputBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(2)),
  //             borderSide: BorderSide(
  //                 color: MaterialColors.textFieldFocusedBorder, width: 1))),
  //   );
  //   return (Container(
  //       padding: const EdgeInsets.symmetric(horizontal: 10),
  //       margin: const EdgeInsets.only(top: 10, bottom: 20),
  //       child: Column(children: [
  //         Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             mainAxisSize: MainAxisSize.max,
  //             children: <Widget>[
  //               Container(
  //                 padding: const EdgeInsets.only(left: 20),
  //                 margin: const EdgeInsets.only(bottom: 5),
  //                 child: Text(
  //                   title,
  //                   style: const TextStyle(
  //                       color: MaterialColors.black,
  //                       fontWeight: FontWeight.bold),
  //                 ),
  //               ),
  //             ]),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           mainAxisSize: MainAxisSize.max,
  //           children: <Widget>[Expanded(child: textField)],
  //         ),
  //       ])));
  // }

  Widget mid(BuildContext context) {
    return Container(
        height: 250,
        width: double.infinity,
        child: Card(
            elevation: 5,
            shadowColor: MaterialColors.black,
            color: MaterialColors.appColor1,
            child: Container(
              margin: const EdgeInsets.only(right: 20, left: 20, top: 15),
              child: Column(children: <Widget>[
                Row(children: const <Widget>[
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 25),
                          child: Text(
                              "Enter OTP recieved on your email id or mobile number",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: MaterialColors.white, fontSize: 15))))
                ]),
                Row(children: const [
                  Expanded(
                      child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: MaterialColors.white,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            borderSide:
                                BorderSide(color: MaterialColors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            borderSide: BorderSide(
                                color: MaterialColors.textFieldFocusedBorder,
                                width: 1))),
                  ))
                ]),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: MaterialButton(
                                hoverColor: MaterialColors.buttonHoverColor,
                                textColor: MaterialColors.black,
                                color: MaterialColors.white,
                                onPressed: () {
                                  // Navigator.pushReplacementNamed(
                                  //     context, AppRouts.PROJECT_DETAIL);
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 35),
                                    child: Text("Verify OTP",
                                        style: TextStyle(
                                            color: MaterialColors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ]),
            )));
  }

  Widget input2(BuildContext context, title, hint, suffix) {
    var textField = TextField(
      decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          suffixIcon: IconButton(
              onPressed: () => {}, icon: Icon(Icons.visibility_sharp)),
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

  getBody() {
    return (Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          children: [
            Flexible(
              child: mid(context),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: input2(
                  context, LableText.NPASSWORD, LableText.PASSWORD, false),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: input2(
                  context, LableText.RPASSWORD, LableText.PASSWORD, false),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: MaterialButton(
                  hoverColor: MaterialColors.buttonHoverColor,
                  textColor: MaterialColors.black,
                  color: MaterialColors.appColor1,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouts.HOME);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      child: Text("Next",
                          style: TextStyle(
                              color: MaterialColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15))),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
