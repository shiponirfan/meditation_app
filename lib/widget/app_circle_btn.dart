import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';

class AppCircleBtn extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const AppCircleBtn(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryText : Colors.white,
          border: Border.all(
            color: AppColor.secondaryText,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : AppColor.secondaryText,
          ),
        ),
      ),
    );
  }
}
