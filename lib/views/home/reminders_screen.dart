import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:meditation_app/views/main_tabview/main_tabview_screen.dart';
import 'package:meditation_app/widget/app_circle_btn.dart';
import 'package:meditation_app/widget/app_rounded_btn.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  List<Map<String, dynamic>> dayPicking = [
    {
      'title': 'SU',
      'isSelected': false,
    },
    {
      'title': 'M',
      'isSelected': false,
    },
    {
      'title': 'T',
      'isSelected': false,
    },
    {
      'title': 'W',
      'isSelected': false,
    },
    {
      'title': 'TH',
      'isSelected': false,
    },
    {
      'title': 'F',
      'isSelected': false,
    },
    {
      'title': 'S',
      'isSelected': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                constraints: BoxConstraints(minHeight: context.height - 180),
                child: Column(
                  children: [
                    _buildTextContent(),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F5F9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.time,
                        onDateTimeChanged: (DateTime newDate) {},
                        use24hFormat: false,
                        minuteInterval: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildBottomTextContent(),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: dayPicking.map((day) {
                          return AppCircleBtn(
                            title: day['title'],
                            isSelected: day['isSelected'],
                            onPressed: () {
                              setState(() {
                                dayPicking[dayPicking.indexOf(day)]
                                    ['isSelected'] = !day['isSelected'];
                              });
                            },
                          );
                        }).toList())
                  ],
                ),
              ),
              AppRoundedBtn(
                title: 'SAVE',
                type: AppRoundedBtnType.primary,
                onPressed: () {
                  context.push(const MainTabviewScreen());
                },
              ),
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'NO THANKS',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.primaryText),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          'What time would you\nlike to meditate?',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: AppColor.primaryText,
            height: 1.3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Any time you can choose but We recommend first thing in th morning.',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: AppColor.secondaryText,
            height: 1.3,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Which day would you\nlike to meditate?',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: AppColor.primaryText,
            height: 1.3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Everyday is best, but we recommend picking at least five.',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: AppColor.secondaryText,
            height: 1.3,
          ),
        ),
      ],
    );
  }
}
