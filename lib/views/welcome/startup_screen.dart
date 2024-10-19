import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/widget/app_rounded_btn.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/startup_bg.png',
            width: double.maxFinite,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          Text(
            'We are what we do',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: AppColor.primaryText),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Thousand of people are using silent moon for smalls meditation ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: AppColor.secondaryText),
            ),
          ),
          const Spacer(),
          AppRoundedBtn(
            title: 'SIGN UP',
            type: AppRoundedBtnType.primary,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          _buildAccountTextBtn(),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildAccountTextBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ALREADY HAVE AN ACCOUNT? ',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.secondaryText),
        ),
        Text(
          'LOG IN',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.primary),
        ),
      ],
    );
  }
}
