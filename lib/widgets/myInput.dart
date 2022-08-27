import 'package:flutter/material.dart';
import 'package:doctors_appointment/assets/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:doctors_appointment/assets/lableText.dart';

class MyInput extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String placeholder;
  final String type;
  final String errorText;
  final String label;
  final Widget suffixIcon;
  // final Widget prefixIcon;
  // final Function onTap;
  final Function onChanged;
  final Function passwordIconTap;
  final TextEditingController controller;
  final bool autofocus;
  final bool secureText;
  final Color borderColor;
  final bool filled;
  final Color fillColor;
  final Color textColor;
  final Color enabledBorderColor;
  final Color errorBorderColor;
  final Color focusedBorderColor;
  final bool outlineBorder;
  final Color cursorColor;
  final Color hintTextColor;

  MyInput(
      {Key? key,
      this.title = "",
      this.placeholder = "",
      this.errorText = "",
      this.type = "normal",
      this.label = "",
      this.suffixIcon = const Icon(null),
      this.secureText = false,
      // this.prefixIcon,
      // this.onTap,
      this.filled = true,
      this.fillColor = MaterialColors.white,
      this.textColor = MaterialColors.Black,
      this.enabledBorderColor = MaterialColors.InputColor,
      this.focusedBorderColor = MaterialColors.InputFocusColor,
      this.errorBorderColor = MaterialColors.InputErrorColor,
      this.cursorColor = MaterialColors.muted,
      this.hintTextColor = MaterialColors.muted,
      this.onChanged = defaultFunc,
      this.passwordIconTap = defaultFunc,
      this.outlineBorder = false,
      this.autofocus = false,
      this.borderColor = MaterialColors.border,
      required this.controller})
      : super(key: key);

  static void defaultFunc() {}

  MyInputState createState() => MyInputState();

  final double _prefferedHeight = 18.0;

  @override
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}

class MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    Widget suffixIcon = widget.type == "email"
        ? const Icon(
            Icons.alternate_email_sharp,
            color: MaterialColors.silver,
          )
        : widget.type == "common"
            ? const Icon(
                Icons.account_circle_sharp,
                color: MaterialColors.silver,
              )
            : widget.type == "address"
                ? const Icon(
                    Icons.home_sharp,
                    color: MaterialColors.silver,
                  )
                : widget.type == "phone"
                    ? const Icon(
                        Icons.phone_sharp,
                        color: MaterialColors.silver,
                      )
                    : widget.type == "comment"
                        ? const Icon(
                            Icons.comment_sharp,
                            color: MaterialColors.silver,
                          )
                        : widget.type == "balance"
                            ? const Icon(
                                Icons.account_balance_wallet_sharp,
                                color: MaterialColors.silver,
                              )
                            : widget.type == "money"
                                ? const Icon(
                                    Icons.attach_money_sharp,
                                    color: MaterialColors.silver,
                                  )
                                : widget.type == "password"
                                    ? widget.secureText
                                        ? const Icon(
                                            Icons.visibility_off,
                                            color: MaterialColors.silver,
                                          )
                                        : const Icon(
                                            Icons.visibility,
                                            color: MaterialColors.silver,
                                          )
                                    : const Icon(null);
    bool secureText = widget.type == "password" && widget.secureText
        ? widget.secureText
        : false;
    return TextField(
        obscureText: secureText,
        cursorColor: widget.cursorColor,
        // onTap: onTap(),

        controller: widget.controller,
        // onChanged: (text) {
        //   widget.(widget.controller.text);
        // },
        autofocus: widget.autofocus,
        style: TextStyle(
          fontSize: 15,
          color: widget.textColor,
        ),
        textAlignVertical: TextAlignVertical(y: 0.5),
        decoration: InputDecoration(
            errorText: widget.errorText != "" ? widget.errorText : null,
            labelText: widget.label,
            contentPadding: EdgeInsets.only(
                left: 10, bottom: widget.outlineBorder ? 20 : 16),
            filled: widget.filled,
            fillColor: widget.fillColor,
            hintStyle: TextStyle(
              color: widget.hintTextColor,
            ),
            suffixIcon: InkWell(
                onTap: () {
                  widget.passwordIconTap();
                },
                child: suffixIcon),
            errorBorder: widget.outlineBorder
                ? OutlineInputBorder(
                    borderSide:
                        BorderSide(color: widget.errorBorderColor, width: 1.5))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.errorBorderColor)),
            focusedErrorBorder: widget.outlineBorder
                ? OutlineInputBorder(
                    borderSide:
                        BorderSide(color: widget.errorBorderColor, width: 1.5))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.errorBorderColor)),
            enabledBorder: widget.outlineBorder
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                        color: widget.enabledBorderColor, width: 1.5))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.enabledBorderColor)),
            focusedBorder: widget.outlineBorder
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                        color: widget.focusedBorderColor, width: 1.5))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.focusedBorderColor)),
            hintText: widget.placeholder));
  }
}
