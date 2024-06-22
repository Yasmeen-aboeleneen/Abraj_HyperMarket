 
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
            width: w,
            height: h * .17,
            // child: Image.asset(
            //   'Assets/Images/pic2.png',
            //   width: w,
            //   fit: BoxFit.fill,
            // ),
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
                  width: w*.7,
                   
                  child: Image.asset(swiper[index],fit: BoxFit.fitWidth,),
                );
              })
        ],
      ),
    );
  }
}
