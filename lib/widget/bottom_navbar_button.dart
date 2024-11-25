import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';

class BottomNavbarButton extends StatelessWidget {
  const BottomNavbarButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.isSelected,
      required this.onPressed});

  final String icon;
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: isSelected ? AppColor.primary : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(18)),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              icon,
              fit: BoxFit.contain,
              width: 24,
              height: 24,
              color: isSelected ? Colors.white : AppColor.secondaryText,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: isSelected ? AppColor.primary : AppColor.secondaryText,
            ),
          )
        ],
      ),
    );
  }
}
