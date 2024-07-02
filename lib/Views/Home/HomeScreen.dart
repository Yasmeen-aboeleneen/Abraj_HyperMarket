import 'package:abraj_hypermarket/Views/Setting/Setting_Screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/Controllers/Home_Screen_controller.dart';
import '../../Core/Utils/Constants/Colors.dart';
import '../Cart/Cart_Screen.dart';
import '../Category/Category_Screen.dart';
import '../Profile/Profile_Screen.dart';
import 'HomeScreen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = Get.put(HomeController());

  final List<Widget> navItems = [
    const Icon(Icons.home, color: Colors.white),
    const Icon(Icons.dashboard, color: Colors.white),
    const Icon(Icons.shopping_cart, color: Colors.white),
    const Icon(Icons.person, color: Colors.white),
    const Icon(Icons.settings, color: Colors.white),
  ];

  var navBody = [
    const HomeScreenBody(),
    const CategoryScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:false ,
          backgroundColor: kveryWhite,
          body: Column(
            children: [
              Obx(() => Expanded(
                  child: navBody.elementAt(controller.currentNavIndex.value))),
            ],
          ),
          bottomNavigationBar: Obx(
            () => CurvedNavigationBar(
              index: controller.currentNavIndex.value,
              color: const Color.fromARGB(255, 25, 149, 76),
              height: 55,
              animationDuration: const Duration(milliseconds: 200),
              backgroundColor: kveryWhite,
              animationCurve: Curves.easeIn,
              items: navItems,
              onTap: (Value) {
                controller.currentNavIndex.value = Value;
              },
            ),
          )),
    );
  }
}
