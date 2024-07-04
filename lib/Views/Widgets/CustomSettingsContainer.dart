import 'package:abraj_hypermarket/Views/Widgets/CustomContainer.dart';
import 'package:flutter/material.dart';
import '../../Core/Utils/Constants/Colors.dart';
import 'RadioCheck.dart';

class Customsettingscontainer extends StatelessWidget {
  const Customsettingscontainer({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
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
              height: h * .06,
            ),
            Customcontainer(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Call us on : ',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
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
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 46, 153, 240)),
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
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 46, 153, 240)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .06,
            ),
            Customcontainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Our pages',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                  RichText(
                    text: const TextSpan(
                      text: 'https://www.facebook.com/abrajmall/?locale=ar_AR',
                      style:
                          TextStyle(color: Color.fromARGB(255, 46, 153, 240)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .06,
            ),
            Customcontainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'If there is any technical problem in the application, contact the developer on :',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'yasmeenaboeleneen10@gmail.com',
                      style:
                          TextStyle(color: Color.fromARGB(255, 46, 153, 240)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
