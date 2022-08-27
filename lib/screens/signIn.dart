import 'package:flutter/material.dart';
import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/assets/lableText.dart';
import 'package:badges/badges.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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

  // Widget logoSection(BuildContext context) {
  //   return (Container(
  //     margin: const EdgeInsets.only(top: 10),
  //     child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         mainAxisSize: MainAxisSize.max,
  //         children: <Widget>[
  //           SizedBox(
  //             height: 150,
  //             width: 150,
  //             child: Image.asset(
  //               'lib/assets/images/MohandeesLogoWhiteBG.PNG',
  //               height: 100,
  //               width: 100,
  //             ),
  //           )
  //         ]),
  //   ));
  // }

  Widget input1(BuildContext context, title, hint, suffix) {
    var textField = TextField(
      decoration: InputDecoration(
          hintText: "Username or ID Number",
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

  Widget line1(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.only(top: 15, bottom: 05),
        alignment: Alignment.center,
        child: Column(children: const [
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "Don't have an account ?",
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
              color: Colors.white,
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
                child: input1(
                    context, LableText.USERNAME, LableText.USERNAME, false),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: input2(
                    context, LableText.PASSWORD, LableText.PASSWORD, false),
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
                          Navigator.pushNamed(context, AppRouts.HOME);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text("Sign in",
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
          Row(
            children: [
              Flexible(
                child: line1(context),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouts.SIGNUP);
                },
                child: register(context, "IF NEW REGISTER HERE", 20, true,
                    Color.fromARGB(255, 1, 55, 249)))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouts.HOME);
                },
                child: skip(context, "SKIP >>>", 20, true, Colors.blue))
          ])
        ])));
  }
}
