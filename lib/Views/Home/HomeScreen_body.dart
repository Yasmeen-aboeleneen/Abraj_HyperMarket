import 'package:flutter/material.dart';

import '../Widgets/Custom_Search_TextField.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Container(
            child: Stack(
              
            ),
          ),
          const SizedBox(
            height: 1,
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
                        color: const Color.fromARGB(255, 25, 149, 76),
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 186, 40),
                            width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    width: w * .1,
                    height: h * .06,
                    child: Icon(Icons.mic_none,
                        size: h * .04, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
          // SizedBox(
          //   height: h * .01,
          // ),
          // const Padding(
          //   padding: EdgeInsets.all(12),
          //   child: CustomSearchTextfield(),
          // ),
          // VxSwiper.builder(
          //     aspectRatio: 16 / 9,
          //     autoPlay: true,
          //     itemCount: swiper.length,
          //     itemBuilder: (context, index) {
          //       return Image.asset(
          //         swiper[index],
          //         fit: BoxFit.fitWidth,
          //       )
          //           .box
          //           .rounded
          //           .clip(Clip.antiAlias)
          //           .margin(const EdgeInsets.all(7))
          //           .make();
          //     })
        ],
      ),
    );
  }
}
