import 'package:flutter/material.dart';
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
