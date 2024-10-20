import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:meditation_app/views/home/choose_topic_screen.dart';
import 'package:meditation_app/widget/app_rounded_btn.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/welcome-bg.png',
            width: context.width,
            fit: BoxFit.fitWidth,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: context.width * 0.5,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Hi Shipon, Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: AppColor.ternaryText),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'to Silent Moon',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 30,
                        color: AppColor.ternaryText),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Explore the app, Find some peace of mind to prepare for meditation.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: AppColor.whiteText),
                  ),
                  const Spacer(),
                  AppRoundedBtn(
                      title: 'GET STARTED',
                      type: AppRoundedBtnType.secondary,
                      onPressed: _onTapNavigateNextPage),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onTapNavigateNextPage() {
    context.push(const ChooseTopicScreen());
  }
}
