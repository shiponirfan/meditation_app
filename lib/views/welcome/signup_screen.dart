import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:meditation_app/views/home/choose_topic_screen.dart';
import 'package:meditation_app/widget/app_fb_google_login.dart';
import 'package:meditation_app/widget/app_rounded_btn.dart';
import 'package:meditation_app/widget/app_rounded_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkPrivacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppFbGoogleLogin(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'OR SIGN UP WITH EMAIL',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColor.secondaryText),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const AppRoundedInputField(title: 'Username'),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppRoundedInputField(title: 'Email address'),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppRoundedInputField(title: 'Password'),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildPrivacyPolicyBtn(),
                  const SizedBox(
                    height: 20,
                  ),
                  AppRoundedBtn(
                    title: 'GET STARTED',
                    type: AppRoundedBtnType.primary,
                    onPressed: _onTapNavigationBtn,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacyPolicyBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              text: "i have read the ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColor.secondaryText,
              ),
              children: [
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                    color: AppColor.primary,
                  ),
                )
              ]),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              checkPrivacyPolicy = !checkPrivacyPolicy;
            });
          },
          icon: checkPrivacyPolicy
              ? const Icon(Icons.check_box)
              : const Icon(Icons.check_box_outline_blank),
          color: checkPrivacyPolicy ? AppColor.primary : AppColor.secondaryText,
        ),
      ],
    );
  }

  void _onTapNavigationBtn() {
    context.push(const ChooseTopicScreen());
  }
}
