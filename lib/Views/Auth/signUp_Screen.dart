import 'package:abraj_hypermarket/Views/Home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/Utils/Constants/Colors.dart';
import '../Widgets/Custom_Pass_TextField.dart';
import '../Widgets/Custom_TextField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: h * .3,
            width: w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/Images/2.jpg'),
                    fit: BoxFit.cover),
                color: kPrimary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
          ),
          SizedBox(
            height: h * .02,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: h * .06,
              child: const Text(
                'Sign up to Abraj Hyper',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const CustomTextField(
            hint: "Full name",
          ),
          SizedBox(
            height: h * .03,
          ),
          const CustomTextField(
            hint: "Email",
          ),
          SizedBox(
            height: h * .03,
          ),
          const CustomPassTextField(
            hint: "Password",
          ),
          SizedBox(
            height: h * .03,
          ),
          const CustomPassTextField(
            hint: "Retype Password",
          ),
          SizedBox(
            height: h * .03,
          ),
          Row(
            children: [
              Checkbox(
                  checkColor: Colors.white,
                  activeColor: kPrimary,
                  value: isCheck,
                  onChanged: (newValue) {
                    setState(() {
                      isCheck = newValue;
                    });
                  }),
              SizedBox(
                width: w * .001,
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'I have read and agree to the',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 93, 92, 92),
                            fontSize: w * .04,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                          text: ' Privacy policy , terms & conditions',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 188, 30, 18),
                              fontSize: w * .04,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              width: w * .6,
              height: h * .06,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      isCheck == true
                          ? kPrimary
                          : const Color.fromARGB(255, 93, 92, 92),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => HomeScreen());
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: w * .04,
                        color: const Color.fromARGB(255, 93, 92, 92)),
                  ),
                  Text(' Log in',
                      style: TextStyle(
                          fontSize: w * .04,
                          color: kPrimary))
                ],
              )),
        ]));
  }
}
