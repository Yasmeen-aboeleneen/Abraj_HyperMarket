import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
  }) : super(key: key);
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3, left: 7, right: 7),
          child: TextFormField(
            decoration: InputDecoration(
              isDense: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 186, 40), width: 2)),
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 186, 40), width: 2)),
            ),
            cursorColor: const Color.fromARGB(255, 0, 186, 40),
          ),
        )
      ],
    );
  }
}
