import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';

class AppFbGoogleLogin extends StatelessWidget {
  const AppFbGoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          width: double.maxFinite,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: context.pop,
                child: Image.asset(
                  'assets/images/back_btn.png',
                  width: 55,
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Create your account ',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: AppColor.primaryText),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _buildFacebookButton(),
              const SizedBox(
                height: 15,
              ),
              _buildGoogleButton(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildFacebookButton() {
    return MaterialButton(
      onPressed: () {},
      minWidth: double.maxFinite,
      height: 60,
      color: const Color(0xff7583CA),
      elevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 15,
          ),
          Image.asset(
            'assets/images/fb.png',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Text(
              'CONTINUE WITH FACEBOOK',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColor.whiteText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGoogleButton() {
    return MaterialButton(
      onPressed: () {},
      minWidth: double.maxFinite,
      height: 60,
      color: Colors.white,
      elevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: AppColor.ternary, width: 1.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 15,
          ),
          Image.asset(
            'assets/images/google.png',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Text(
              'CONTINUE WITH GOOGLE',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
