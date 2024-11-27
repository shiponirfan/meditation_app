import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  List<Map> sleepDataList = [
    {
      'image': 'assets/images/sleep/sleep_music_1.png',
      'title': 'Night Island',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
    {
      'image': 'assets/images/sleep/sleep_music_2.png',
      'title': 'Sweet Sleep',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
    {
      'image': 'assets/images/sleep/sleep_music_3.png',
      'title': 'Good Night',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
    {
      'image': 'assets/images/sleep/sleep_music_4.png',
      'title': 'Moon Clouds',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
    {
      'image': 'assets/images/sleep/sleep_music_1.png',
      'title': 'Night Island',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
    {
      'image': 'assets/images/sleep/sleep_music_2.png',
      'title': 'Sweet Sleep',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
    {
      'image': 'assets/images/sleep/sleep_music_3.png',
      'title': 'Good Night',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
    {
      'image': 'assets/images/sleep/sleep_music_4.png',
      'title': 'Moon Clouds',
      'subtitle': '45 MIN - SLEEP MUSIC',
    },
  ];
  List<Map<String, String>> categoryData = [
    {'title': 'All', 'image': 'assets/images/meditate/all.png'},
    {'title': 'My', 'image': 'assets/images/meditate/my.png'},
    {'title': 'Anxious', 'image': 'assets/images/meditate/anxious.png'},
    {'title': 'Sleep', 'image': 'assets/images/meditate/sleep.png'},
    {'title': 'Kids', 'image': 'assets/images/meditate/kids.png'},
  ];
  int categorySelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.sleepBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/images/sleep/sleep_bg.png',
                  width: double.maxFinite,
                  fit: BoxFit.fitWidth,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
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
                                            color:
                                                categorySelectedIndex == index
                                                    ? AppColor.primary
                                                    : const Color(0xff586894),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(25))),
                                        child: Image.asset(category['image'],
                                            width: 25,
                                            height: 25,
                                            fit: BoxFit.fitWidth),
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
                                              ? AppColor.whiteText
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Image.asset(
                                'assets/images/sleep/moon.png',
                                width: context.width,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'The Ocean Moon',
                                    style: TextStyle(
                                      color: Color(0xffFFE7BF),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 36,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Non-stop 8- hour mixes of our most popular sleep audio',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.whiteText,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      decoration: BoxDecoration(
                                          color: AppColor.whiteText,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(25))),
                                      child: Text(
                                        'START',
                                        style: TextStyle(
                                          color: AppColor.primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: sleepDataList.length,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.06),
              itemBuilder: (context, index) {
                Map sleepData = sleepDataList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        sleepData['image'],
                        width: double.maxFinite,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      sleepData['title'],
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      sleepData['subtitle'],
                      style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                );
              },
            ),
          ],
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
          'Sleep Stories',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: AppColor.whiteText),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Soothing bedtime stories to help you fall into a deep and natural sleep',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: AppColor.whiteText,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
