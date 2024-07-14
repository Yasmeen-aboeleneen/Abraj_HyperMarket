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
            padding: EdgeInsets.only(left: 8, top: 11, bottom: 11),
            child: Customaddressbar(),
          ),
          Padding(
            padding: const EdgeInsets.all(9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            padding: const EdgeInsets.only(left: 8, right: 8),
            color: kveryWhite,
            height: h * .64,
            width: w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      itemCount: swiper.length,
                      height: 165,
                      enlargeCenterPage: true,
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
                      }),
                  SizedBox(
                    height: h * .02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Best offers',
                      style: TextStyle(
                          fontSize: h * .02,
                          fontWeight: FontWeight.w600,
                          color: kGrey),
                    ),
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          7,
                          (index) => Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  width: w * .4,
                                  height: h * .27,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kPrimary,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(children: [
                                            Image.network(
                                              'https://i.pinimg.com/564x/17/b9/40/17b9404f45c72375a05ee049e731b0e8.jpg',
                                              width: w * .4,
                                              height: h * .15,
                                              fit: BoxFit.fill,
                                            ),
                                            Positioned(
                                                bottom: 0,
                                                child: Container(
                                                  width: w * .1,
                                                  height: h * .04,
                                                  decoration: BoxDecoration(
                                                    color: kPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: const Icon(
                                                    Icons.add_shopping_cart,
                                                    color: kveryWhite,
                                                  ),
                                                ))
                                          ]),
                                          SizedBox(
                                            height: h * .01,
                                          ),
                                          Text(
                                            'Green Grapes',
                                            maxLines: 3,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                                fontSize: h * .02,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: h * .01,
                                          ),
                                          Text(
                                            '60 Egp',
                                            style: TextStyle(
                                                fontSize: h * .017,
                                                fontWeight: FontWeight.w500,
                                                color: kPrimary),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Grocery',
                      style: TextStyle(
                          fontSize: h * .02,
                          fontWeight: FontWeight.w600,
                          color: kGrey),
                    ),
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  Column(children:[ SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          7,
                          (index) => Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  width: w * .4,
                                  height: h * .27,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kPrimary,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(children: [
                                            Image.network(
 'https://i.pinimg.com/564x/66/36/e4/6636e43d83549e45609da8f700680a96.jpg',
                                               width: w * .4,
                                              height: h * .15,
                                              fit: BoxFit.fill,
                                            ),
                                            Positioned(
                                                bottom: 0,
                                                child: Container(
                                                  width: w * .1,
                                                  height: h * .04,
                                                  decoration: BoxDecoration(
                                                    color: kPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: const Icon(
                                                    Icons.add_shopping_cart,
                                                    color: kveryWhite,
                                                  ),
                                                ))
                                          ]),
                                          SizedBox(
                                            height: h * .01,
                                          ),
                                          Text(
                                            'Oil bottle',
                                            maxLines: 3,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                                fontSize: h * .02,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: h * .01,
                                          ),
                                          Text(
                                            '88 Egp',
                                            style: TextStyle(
                                                fontSize: h * .017,
                                                fontWeight: FontWeight.w500,
                                                color: kPrimary),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                    ),
                  ),]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
