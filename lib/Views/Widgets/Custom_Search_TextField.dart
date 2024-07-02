import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:abraj_hypermarket/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        hintText: S.of(context).searchHint,
        hintStyle: const TextStyle(fontSize: 15),
        suffixIcon: const Icon(
          Icons.search,
          size: 25,
        ),
        filled: true,
        fillColor: kveryWhite,
        isDense: true,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kPrimary, width: 2.5)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kPrimary, width: 2.5)),
      ),
      cursorColor: kPrimary,
    );
  }
}
