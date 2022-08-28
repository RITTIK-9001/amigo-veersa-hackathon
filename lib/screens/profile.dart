import 'package:doctors_appointment/assets/json.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/widgets/avtarImage.dart';
import 'package:doctors_appointment/widgets/contactBox.dart';
import 'package:doctors_appointment/widgets/doctorInfoBox.dart';
import 'package:doctors_appointment/widgets/mybutton.dart';
import 'package:flutter/material.dart';

import '../../assets/Theme.dart';
import '../../config/appRoutes.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Your Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mr. Rishav Mahapatra",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "9903499185",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    "rishavmahapatra2004@gmail.com",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    "09-01-2001",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              AvatarImage(
                doctors[2]['image'].toString(),
                radius: 10,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 5,
          ),
          Text("TOTAL 3 APPOINTMENTS SCHEDULED",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          SizedBox(
            height: 3,
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DoctorInfoBox(
                value: "500",
                info: "Wallet Balance",
                icon: Icons.money_outlined,
                color: Colors.green,
              ),
              DoctorInfoBox(
                value: " 2 DOSES ",
                info: "COVID VACCINATION",
                icon: Icons.vaccines,
                color: Colors.purple,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DoctorInfoBox(
                value: "A+",
                info: "BLOOD GROUP",
                icon: Icons.bloodtype_rounded,
                color: Colors.red,
              ),
              Center(
                child: DoctorInfoBox(
                  value: "3",
                  info: " TRANSACTION DETAILS",
                  icon: Icons.card_membership_rounded,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("CONTACT US",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactBox(
                  icon: Icons.videocam_rounded,
                  color: Colors.blue,
                ),
                ContactBox(
                  icon: Icons.call_end,
                  color: Colors.green,
                ),
                ContactBox(
                  icon: Icons.chat_rounded,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
