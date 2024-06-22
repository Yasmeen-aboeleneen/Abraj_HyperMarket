import 'package:abraj_hypermarket/Views/Auth/signUp_Screen.dart';
import 'package:abraj_hypermarket/Views/Home/HomeScreen.dart';
import 'package:abraj_hypermarket/Views/Widgets/Custom_Pass_TextField.dart';
import 'package:abraj_hypermarket/Views/Widgets/Custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Pass_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    image: AssetImage(
                      'Assets/Images/2.jpg',
                    ),
                    fit: BoxFit.cover),
                color: Color.fromARGB(255, 0, 186, 40),
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
                'Log in to Abraj Hyper',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    activeColor: const Color.fromARGB(255, 0, 186, 40),
                    value: isCheck,
                    onChanged: (newValue) {
                      setState(() {
                        isCheck = newValue;
                      });
                    }),
                SizedBox(
                  width: w * .0001,
                ),
                Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                  TextSpan(
                    text: 'Remember me',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 93, 92, 92),
                        fontSize: w * .04,
                        fontWeight: FontWeight.w400),
                  ),
                ]))),
                TextButton(
                    onPressed: () {
                      Get.to(() => const ForgotPassScreen());
                    },
                    child: const Text(
                      'Forget password?',
                      style: TextStyle(
                          fontSize: 15, color: Color.fromARGB(255, 0, 186, 40)),
                    )),
              ],
            ),
          ),
          Center(
            child: Container(
              width: w * .6,
              height: h * .06,
              child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 0, 186, 40),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const SignUpScreen());
                    },
                    child: const Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromARGB(255, 0, 186, 40)),
                    ))),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color.fromARGB(255, 0, 186, 40),
                    thickness: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Log in with',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color.fromARGB(255, 0, 186, 40),
                    thickness: 3,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * .01,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 186, 40), width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                width: w * .4,
                height: h * .06,
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          child: Image.network(
                        'http://pngimg.com/uploads/google/google_PNG19635.png',
                        fit: BoxFit.cover,
                        height: h * .05,
                      )),
                      SizedBox(
                        width: w * .01,
                      ),
                      const Text(
                        'Google',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 186, 40), width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                width: w * .4,
                height: h * .06,
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.facebook,
                          size: h * .04,
                          color: const Color.fromARGB(255, 27, 127, 208),
                        ),
                      ),
                      SizedBox(
                        width: w * .01,
                      ),
                      const Text(
                        'Facebook',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            )
          ])
        ]));
  }
}
