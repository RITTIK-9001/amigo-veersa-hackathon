import 'package:doctors_appointment/assets/lableText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:doctors_appointment/config/appRoutes.dart';
import 'package:doctors_appointment/theme/colors.dart';
import 'package:doctors_appointment/assets/lableText.dart';
import 'package:badges/badges.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
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

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orangeAccent[100],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Appointment"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.sort,
            ),
            onPressed: () => {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 10,
                  color: Colors.orangeAccent[100],
                  margin: EdgeInsets.all(0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Aditya Sharma",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.done,
                                    size: 15,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Noida, India",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  for (int i = 0; i < 5; i++)
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                    )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "Book Your slot (Only 8 AM to 5 PM)",
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
                    width: 400,
                    color: Colors.black54,
                    height: 3,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.lightBlue,
                    shadowColor: Colors.black87,
                    elevation: 10,
                    child: Column(
                      children: [
                        FormBuilderDateTimePicker(
                          name: 'date',
                          initialEntryMode: DatePickerEntryMode.calendar,
                          initialValue: DateTime.now(),
                          inputType: InputType.both,
                          decoration: InputDecoration(
                            // labelText: AppLocalizations.of(context)!.appointments!,
                            labelText: LableText.APPOINTMENT,
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.calendar_view_day_rounded),
                              onPressed: () {
                                _formKey.currentState!.fields['date']
                                    ?.didChange(null);
                              },
                            ),
                          ),
                          initialTime: const TimeOfDay(hour: 8, minute: 0),
                          // locale: const Locale.fromSubtags(languageCode: 'fr'),
                        ),
                      ],
                    )),
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
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: Text(
                    "Address",
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
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    "Advance Ortho Clinic,897,Sector 29, Noida,Uttar Pradesh,201301",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
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
                                context, AppRouts.BOOKINGCONFIRMATION);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 50),
                              child: Text("Confirm Your Booking",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 25,
            top: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 55.0,
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1537368910025-700350fe46c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
