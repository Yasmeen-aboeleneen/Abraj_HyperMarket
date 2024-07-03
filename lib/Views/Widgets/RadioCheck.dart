import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:flutter/material.dart';

class RadioCheck extends StatefulWidget {
  const RadioCheck({super.key});

  @override
  State<RadioCheck> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RadioCheck> {
  String selectedLanguage = 'English';
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Radio<String>(
                  activeColor: kPrimary,
                  value: 'English',
                  groupValue: selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value!;
                    });
                  }),
              const Text('English'),
            ],
          ),
          SizedBox(
            width: w * .001,
          ),
          Row(
            children: [
              Radio<String>(
                  activeColor: kPrimary,
                  value: 'العربية',
                  groupValue: selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value!;
                    });
                  }),
              const Text('العربية')
            ],
          ),
        ],
      ),
    );
  }
}
