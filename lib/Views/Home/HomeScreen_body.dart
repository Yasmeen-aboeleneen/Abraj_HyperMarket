import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:abraj_hypermarket/Views/Widgets/CustomAddressBar.dart';
import 'package:flutter/material.dart';
import '../../Core/Utils/Components/Lists.dart';
import '../Widgets/Custom_Search_TextField.dart';
import 'package:velocity_x/velocity_x.dart';

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
      color: kveryWhite,
      height: h,
      width: w,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Customaddressbar(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: w * .8, child: const CustomSearchTextfield()),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: kPrimary,
                        border: Border.all(color: kPrimary, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    width: w * .1,
                    height: h * .06,
                    child:
                        Icon(Icons.mic_none, size: h * .04, color: kveryWhite),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * .01,
          ),
          Container(
            padding: EdgeInsets.all(9),
            color: kveryWhite,
            height: h * .66,
            width: w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      itemCount: swiper.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          swiper[index],
                          fit: BoxFit.fitWidth,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.all(8))
                            .make();
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
