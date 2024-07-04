import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:abraj_hypermarket/Views/Widgets/CustomSettingsContainer.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      color: kveryWhite,
      height: h,
      width: w,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Settings',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          SizedBox(
            height: h * .02,
          ),
          const Customsettingscontainer()
        ]),
      ),
    );
  }
}
