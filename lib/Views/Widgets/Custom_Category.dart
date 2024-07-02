import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory(
      {super.key,
      required this.image,
      required this.categoryTitle,
      this.ontap,
      required this.color});
  final String image;
  final String categoryTitle;
  final void ontap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 8,   bottom: 8),
        child: Container(
          height: h * .16,
          width: w * .29,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: w * .12,
                  backgroundColor: kveryWhite,
                  backgroundImage: NetworkImage(image),
                ),
                Expanded(
                  child: Text(
                    categoryTitle,
                    style: TextStyle(
                        fontSize: w * .04,
                        color: kDark,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
