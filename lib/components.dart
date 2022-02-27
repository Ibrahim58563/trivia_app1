import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  required Function function,
  required String text,
  double radius = 0.0,
  IconData? prefix,
  IconData? suffix,
  heigth = 50.0,
  required Color color,
  Color? iconColor,
  required Color textColor,
  double? preSpace,
  double? endSpace,
}) =>
    Container(
      height: heigth,
      width: width,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(3.0)),
      child: MaterialButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(prefix, color: iconColor),
              SizedBox(
                width: preSpace,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 15.0,
                  color: textColor,
                ),
              ),
              SizedBox(
                width: endSpace,
              ),
              Icon(suffix, color: iconColor)
            ],
          )),
    );

Widget defaultFormField({
  required String labelText,
  IconData? prefix,
  IconData? suffix,
  bool obsecueText = false,
  required TextInputType type,
  Function()? onTap,
}) =>
    TextFormField(
      keyboardType: type,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: labelText,
        border: UnderlineInputBorder(),
        prefixIcon: Icon(prefix),
        suffixIcon: Icon(suffix),
      ),
    );
