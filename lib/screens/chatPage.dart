import 'package:doctors_appointment/assets/json.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/widgets/avtarImage.dart';
import 'package:doctors_appointment/widgets/chatItem.dart';
import 'package:doctors_appointment/widgets/textBox.dart';
import 'package:flutter/material.dart';
import "package:badges/badges.dart";

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Chat Room",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomTextBox(),
              SizedBox(
                height: 35,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        chatsData.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Badge(
                                  badgeColor: Colors.green,
                                  borderSide: BorderSide(color: Colors.white),
                                  position:
                                      BadgePosition.topEnd(top: -3, end: 4),
                                  badgeContent: Text(''),
                                  child: AvatarImage(
                                      chatsData[index]["image"].toString())),
                            ))),
              ),
              SizedBox(
                height: 30,
              ),
              getChatList()
            ])));
  }

  getChatList() {
    return Column(
        children: List.generate(
            chatsData.length, (index) => ChatItem(chatsData[index])));
  }
}
