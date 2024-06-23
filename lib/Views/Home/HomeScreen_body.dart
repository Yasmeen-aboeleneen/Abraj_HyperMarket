import 'package:abraj_hypermarket/Views/Widgets/Custom_Search_TextField.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Core/Utils/Components/Lists.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: h,
      width: w,
      child: Column(
        children: [
          Container(
            height: h * .17,
            width: w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'Assets/Images/4.jpg',
                    ),
                    fit: BoxFit.cover),
                color: Color.fromARGB(255, 0, 186, 40),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  // bottomRight: Radius.circular(25)
                )),
          ),
          SizedBox(
            height: h * .01,
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: CustomSearchTextfield(),
          ),
          VxSwiper.builder(
              itemCount: swiper.length,
              itemBuilder: (context, index) {
                return Container(
                  width: w * .6,
                  child: Image.asset(
                    swiper[index],
                    fit: BoxFit.fitWidth,
                  ),
                );
              })
        ],
      ),
    );
  }
}
