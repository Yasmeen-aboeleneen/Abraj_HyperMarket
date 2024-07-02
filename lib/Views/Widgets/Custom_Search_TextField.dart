import 'package:abraj_hypermarket/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: S.of(context).searchHint,
        suffixIcon: const Icon(
          Icons.search,
          size: 25,
        ),
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 0, 186, 40), width: 2.5)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 0, 186, 40), width: 2.5)),
      ),
      cursorColor: const Color.fromARGB(255, 0, 186, 40),
    );
  }
}
