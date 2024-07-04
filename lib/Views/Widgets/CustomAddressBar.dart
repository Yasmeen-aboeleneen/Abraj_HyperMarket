import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:flutter/material.dart';

class Customaddressbar extends StatelessWidget {
  const Customaddressbar({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
            radius: 22,
            backgroundColor: kTertiary,
            backgroundImage: NetworkImage(
                'https://reductress.com/wp-content/uploads/2019/06/petite-woman-1-820x500.jpg')),
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivering to',
              style: TextStyle(color: kPrimary, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 17,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 15,
                    color: kPrimary,
                  ),
                  Text(
                    'Mansoura city , suez canal st',
                    maxLines: 3,
                    style: TextStyle(color: kGrey, fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: w * .02,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          getTimeOfDay(),
          style: const TextStyle(fontSize: 35),
        )
      ],
    ));
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour >= 0 && hour < 12) {
      return ' ☀️ ';
    } else if (hour >= 12 && hour < 16) {
      return ' ⛅ ';
    } else {
      return ' 🌙 ';
    }
  }
}
