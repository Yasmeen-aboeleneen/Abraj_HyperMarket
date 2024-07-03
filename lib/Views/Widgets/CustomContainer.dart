// ignore_for_file: must_be_immutable

import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:flutter/material.dart';

class Customcontainer extends StatelessWidget {
  Customcontainer({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h * .13,
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kveryWhite,
          border: Border.all(width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
