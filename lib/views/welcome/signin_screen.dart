import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:meditation_app/views/welcome/signup_screen.dart';
import 'package:meditation_app/widget/app_fb_google_login.dart';
import 'package:meditation_app/widget/app_rounded_btn.dart';
import 'package:meditation_app/widget/app_rounded_input_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              'OR LOG IN WITH EMAIL',
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
                  const AppRoundedInputField(title: 'Email address'),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppRoundedInputField(title: 'Password'),
                  const SizedBox(
                    height: 30,
                  ),
                  AppRoundedBtn(
                    title: 'LOG IN',
                    type: AppRoundedBtnType.primary,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildAccountTextBtn(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAccountTextBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "DON'T HAVE AN ACCOUNT? ",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.secondaryText),
        ),
        TextButton(
          onPressed: _onTapSignUpBtn,
          child: Text(
            'SIGN UP',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColor.primary),
          ),
        )
      ],
    );
  }

  void _onTapSignUpBtn() {
    context.push(const SignUpScreen());
  }
}
