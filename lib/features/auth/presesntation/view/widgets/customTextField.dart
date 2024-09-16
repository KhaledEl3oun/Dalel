import 'package:first_app/core/utils/app_color.dart';
import 'package:first_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.text,
      required this.bottom,
      this.onChanged,
      this.onFieldSubmitted});
  final String text;
  final double bottom;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, top: 14, bottom: bottom),
      child: TextFormField(
        
        validator: (value) {
          if (value!.isEmpty) {
            return "this field is required";
          } else {
           return null;
          }
        
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
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
