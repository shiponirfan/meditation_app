import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';

class CourseVoiceBtn extends StatelessWidget {
  const CourseVoiceBtn(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onPressed});

  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: isSelected ? AppColor.primary : AppColor.secondaryText,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 80,
            height: 3,
            color: isSelected ? AppColor.primary : Colors.transparent,
          )
        ],
      ),
    );
  }
}
