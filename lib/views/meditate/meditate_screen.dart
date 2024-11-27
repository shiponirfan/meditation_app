import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_app/views/home/reminders_screen.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  List<Map<String, String>> categoryData = [
    {'title': 'All', 'image': 'assets/images/meditate/all.png'},
    {'title': 'My', 'image': 'assets/images/meditate/my.png'},
    {'title': 'Anxious', 'image': 'assets/images/meditate/anxious.png'},
    {'title': 'Sleep', 'image': 'assets/images/meditate/sleep.png'},
    {'title': 'Kids', 'image': 'assets/images/meditate/kids.png'},
  ];
  List<Map<String, String>> topicData = [
    {
      'image': 'assets/images/meditate/image1.png',
      'title': '7 Days of Calm',
    },
    {
      'image': 'assets/images/meditate/image2.png',
      'title': 'Anxiety Release',
    },
    {
      'image': 'assets/images/meditate/image3.png',
      'title': 'How to Meditate',
    },
    {
      'image': 'assets/images/meditate/image4.png',
      'title': '7 Days of Calm',
    },
    {
      'image': 'assets/images/meditate/image1.png',
      'title': '7 Days of Calm',
    },
    {
      'image': 'assets/images/meditate/image2.png',
      'title': 'Anxiety Release',
    },
    {
      'image': 'assets/images/meditate/image3.png',
      'title': 'How to Meditate',
    },
    {
      'image': 'assets/images/meditate/image4.png',
      'title': '7 Days of Calm',
    },
  ];
  int categorySelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.width,
        height: context.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/images/topic_bg.png')),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextContent(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Map category = categoryData[index];
                      return InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          categorySelectedIndex = index;
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: categorySelectedIndex == index
                                      ? AppColor.primary
                                      : AppColor.secondaryText,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25))),
                              child: Image.asset(category['image'],
                                  width: 25, height: 25, fit: BoxFit.fitWidth),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              category['title'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: categorySelectedIndex == index
                                    ? AppColor.primaryText
                                    : AppColor.secondaryText,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: categoryData.length),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1DDCF),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset(
                      'assets/images/meditate/daily_bg.png',
                      width: context.width,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daily Calm',
                              style: TextStyle(
                                color: AppColor.primaryText,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'APR 30 PAUSE PRACTICE',
                              style: TextStyle(
                                color: AppColor.primaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/meditate/play_btn_black.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  itemCount: topicData.length,
                  itemBuilder: (context, index) {
                    var height = index % 4 == 0 || index % 4 == 2
                        ? context.width * 0.55
                        : context.width * 0.45;
                    Map<String, String> topic = topicData[index];
                    return InkWell(
                      onTap: _onTapNavigateNextPage,
                      child: Container(
                        height: height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                topic['image']!,
                                fit: BoxFit.cover,
                                width: double.maxFinite,
                                height: double.maxFinite,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  width: double.maxFinite,
                                  padding: const EdgeInsets.all(15),
                                  decoration: const BoxDecoration(
                                    color: Colors.black12,
                                  ),
                                  child: Text(
                                    topic['title']!,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
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
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          'Meditate',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: AppColor.primaryText),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: AppColor.secondaryText,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  void _onTapNavigateNextPage() {
    context.push(const RemindersScreen());
  }
}
