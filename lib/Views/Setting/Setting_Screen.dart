import 'package:abraj_hypermarket/Views/Widgets/RadioCheck.dart';
import 'package:abraj_hypermarket/Views/Widgets/SwitchMode.dart';
import 'package:flutter/material.dart';
import 'package:abraj_hypermarket/Views/Widgets/CustomContainer.dart';
import '../../Core/Utils/Constants/Colors.dart';

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
      color: Colors.white,
      height: h,
      width: w,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Settings',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(
              height: h * .02,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: kveryWhite,
              height: h * .77,
              width: w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Customcontainer(
                      child: const SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Select Language',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600)),
                            RadioCheck()
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Customcontainer(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Theme',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Switchmode(
                                    icon: Icon(Icons.sunny),
                                    onpressed: () {},
                                    text: 'Light',
                                    colorr: kSecondaryLight,
                                    iconColor: Colors.yellow.shade700),
                                Switchmode(
                                    icon: Icon(Icons.sunny_snowing),
                                    onpressed: () {},
                                    text: 'Dark',
                                    colorr: kDark,
                                    iconColor: const Color.fromARGB(
                                        255, 166, 92, 179)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Customcontainer(
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Call us on : ',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_phone_outlined,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '0115857878',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_phone_outlined,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '0115857878',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Customcontainer(
                      child: Text('data'),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Customcontainer(
                      child: Text('data'),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Customcontainer(
                      child: Text('data'),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Customcontainer(
                      child: Text('data'),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Customcontainer(
                      child: Text('data'),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                  ],
                ),
              ),
            )
            //  Dropdown()
          ],
        ),
      ),
    );
  }
}
