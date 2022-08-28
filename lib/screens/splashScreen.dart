import 'package:flutter/material.dart';
import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:intro_slider/intro_slider.dart';

@override
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        pathImage: "lib/assets/images/splash1.png",
        heightImage: 400,
        widthImage: 200,
        backgroundColor: Colors.white,
      ),
    );
    slides.add(
      new Slide(
        pathImage: "lib/assets/images/carousel3.png",
        heightImage: 400,
        widthImage: 200,
        backgroundColor: Colors.white,
      ),
    );
  }

  void onDonePress() {
    Navigator.pushNamed(context, AppRouts.SIGNIN);
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onSkipPress: this.onDonePress,
      onDonePress: this.onDonePress,
      doneButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
    );
  }
}
