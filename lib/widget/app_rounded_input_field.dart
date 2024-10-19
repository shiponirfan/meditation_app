import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';

class AppRoundedInputField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText = false;
  final Widget? icon;

  const AppRoundedInputField(
      {super.key,
      required this.title,
      this.controller,
      this.keyboardType,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 60,
      padding: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColor.inputBg),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: AppColor.secondaryText),
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: AppColor.secondaryText),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: InputBorder.none,
          suffixIcon: icon,
        ),
      ),
    );
  }
}
