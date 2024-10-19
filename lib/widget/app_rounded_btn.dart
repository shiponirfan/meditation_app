import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';

enum AppRoundedBtnType { primary, secondary }

class AppRoundedBtn extends StatelessWidget {
  final String title;
  final AppRoundedBtnType type;
  final VoidCallback onPressed;

  const AppRoundedBtn(
      {super.key,
      required this.title,
      required this.type,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.maxFinite,
        height: 60,
        color: type == AppRoundedBtnType.primary
            ? AppColor.primary
            : AppColor.ternary,
        elevation: 0,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: TextStyle(
              color: type == AppRoundedBtnType.primary
                  ? AppColor.whiteText
                  : AppColor.primaryText,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
