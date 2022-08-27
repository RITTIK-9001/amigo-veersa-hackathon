import 'package:doctors_appointment/screens.dart';
import 'package:flutter/material.dart';

import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:doctors_appointment/screens/accountPage.dart';
import 'package:doctors_appointment/screens/chatPage.dart';
import 'package:doctors_appointment/screens/doctorPage.dart';
import 'package:doctors_appointment/screens/doctorProfilePage.dart';
import 'package:doctors_appointment/screens/home.dart';
import 'package:doctors_appointment/screens/homePage.dart';
import 'package:doctors_appointment/screens/heartSpecialist.dart';
import 'package:doctors_appointment/screens/dentist.dart';
import 'package:doctors_appointment/screens/physician.dart';
import 'package:doctors_appointment/screens/physioTherapist.dart';
import 'package:doctors_appointment/screens/signIn.dart';
import 'package:doctors_appointment/screens/signUp.dart';
import 'package:doctors_appointment/screens/verification.dart';

// import '../screens/location/MyLocation.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [],
        initialRoute: AppRouts.SIGNIN,
        routes: <String, WidgetBuilder>{
          AppRouts.HOME: (BuildContext context) => Home(),
          AppRouts.HOMEPAGE: (BuildContext context) => HomePage(),
          AppRouts.DOCTORPROFILEPAGE: (BuildContext context) =>
              DoctorProfilePage(),
          AppRouts.DOCTORPAGE: (BuildContext context) => DoctorPage(),
          AppRouts.CHATPAGE: (BuildContext context) => ChatPage(),
          AppRouts.ACCOUNTPAGE: (BuildContext context) => AccountPage(),
          AppRouts.HEARTSPECIALIST: (BuildContext context) => HeartSpecialist(),
          AppRouts.DENTIST: (BuildContext context) => Dentist(),
          AppRouts.PHYSICIAN: (BuildContext context) => Physician(),
          AppRouts.PHYSIOTHERAPIST: (BuildContext context) => PhysioTherapist(),
          AppRouts.SIGNIN: (BuildContext context) => SignIn(),
          AppRouts.SIGNUP: (BuildContext context) => SignUp(),
          AppRouts.VERIFICATION: (BuildContext context) => Verification()

          // AppRouts.CUSTOMERPROFILE3: (BuildContext context) => CustomerProfile3(),
        });
  }
}
