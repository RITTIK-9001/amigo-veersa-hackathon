import 'package:badges/badges.dart';
import 'package:doctors_appointment/assets/json.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/widgets/categoryBox.dart';
import 'package:doctors_appointment/widgets/popularDoctor.dart';
import 'package:doctors_appointment/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:doctors_appointment/config/appRoutes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Text(
              "Hi,",
              style: TextStyle(
                  fontSize: 23, color: primary, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Text(
            "Let's Find Your Doctor",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 15,
          ),
          CustomTextBox(),
          SizedBox(
            height: 25,
          ),
          Container(
              child: Text(
            "Categories",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
          SizedBox(height: 10),
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRouts.HEARTSPECIALIST);
                  },
                  child: CategoryBox(
                    title: "Heart",
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRouts.PHYSICIAN);
                          },
                          child: CategoryBox(
                            title: "Physician",
                            icon: Icons.local_hospital,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRouts.DENTIST);
                          },
                          child: CategoryBox(
                            title: "Dental",
                            icon: Icons.details_rounded,
                            color: Colors.purple,
                          )),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRouts.PHYSIOTHERAPIST);
                          },
                          child: CategoryBox(
                            title: " Physio",
                            icon: Icons.healing_outlined,
                            color: Colors.green,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://media.istockphoto.com/vectors/electronic-health-record-concept-vector-id1299616187?k=20&m=1299616187&s=612x612&w=0&h=gmUf6TXc8w6NynKB_4p2TzL5PVIztg9UK6TOoY5ckMM="),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              child: Text(
            "Popular Doctors",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
          SizedBox(height: 10),
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PopularDoctor(
                  doctor: doctors[0],
                ),
                PopularDoctor(
                  doctor: doctors[1],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
                          Navigator.pushNamed(context, AppRouts.MAPSCREEN);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text("GIVE YOUR LOCATION",
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
            height: 20,
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
                          Navigator.pushNamed(context, AppRouts.DOCTORPAGE);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text("GET DOCTOR'S CLINIC NEAR YOU",
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
        ]),
      ),
    );
  }
}
