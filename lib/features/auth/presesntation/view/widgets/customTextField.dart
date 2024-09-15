import 'package:first_app/core/utils/app_color.dart';
import 'package:first_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, required this.bottom});
  final String text;
  final double bottom;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 8, right: 8, top: 14, bottom: bottom),
      child: TextField(
        decoration: InputDecoration(
            label: Text(text),
            labelStyle:
                TextStyles.poppinsSmallStyle.copyWith(color: AppColors.grey),
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle()),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: AppColors.grey));
}
