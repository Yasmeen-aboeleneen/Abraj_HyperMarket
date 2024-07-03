// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Switchmode extends StatelessWidget {
  Switchmode(
      {super.key,
      required this.icon,
      required this.onpressed,
      required this.text,
      required this.colorr,
      required this.iconColor});
  Icon icon;
  String text;
  void onpressed;
  Color colorr;
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(colorr),
          iconColor: WidgetStatePropertyAll(iconColor),
          iconSize: const WidgetStatePropertyAll(25)),
      onPressed: () {},
      label: Text(text),
      icon: icon,
    );
  }
}
