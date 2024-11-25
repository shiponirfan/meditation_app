import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:meditation_app/views/course_details/course_details.dart';
import 'package:meditation_app/widget/recommended_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> recommendedList = [
    {
      'image': 'assets/images/home/focus.png',
      'title': 'Focus',
      'subTitle': 'MEDITATION',
      'time': '3-10 MIN',
    },
    {
      'image': 'assets/images/home/happiness.png',
      'title': 'Happiness',
      'subTitle': 'MEDITATION',
      'time': '3-10 MIN',
    },
    {
      'image': 'assets/images/home/focus.png',
      'title': 'Focus',
      'subTitle': 'MEDITATION',
      'time': '3-10 MIN',
    },
    {
      'image': 'assets/images/home/happiness.png',
      'title': 'Happiness',
      'subTitle': 'MEDITATION',
      'time': '3-10 MIN',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo_black.png',
                width: context.width * 0.5,
                fit: BoxFit.fitWidth,
              ),
            ),
            _buildTextContent(),
            Row(
              children: [
                Container(
                  width: context.width * 0.5 - 30,
                  decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/home/icon1.png',
                            fit: BoxFit.fitWidth,
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Basics',
                              style: TextStyle(
                                color: AppColor.ternaryText,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'COURSE',
                              style: TextStyle(
                                color: AppColor.ternaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '3-10 MIN',
                                  style: TextStyle(
                                    color: AppColor.whiteText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.push(const CourseDetails());
                                  },
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
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: context.width * 0.5 - 30,
                  decoration: BoxDecoration(
                      color: AppColor.iconBg,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/home/icon2.png',
                            fit: BoxFit.fitWidth,
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Relaxation',
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
                              'MUSIC',
                              style: TextStyle(
                                color: AppColor.primaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '3-10 MIN',
                                  style: TextStyle(
                                    color: AppColor.primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.push(const CourseDetails());
                                  },
                                  child: Container(
                                    width: 70,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    decoration: BoxDecoration(
                                        color: AppColor.primaryText,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Text(
                                      'START',
                                      style: TextStyle(
                                        color: AppColor.whiteText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/home/play_bg.png',
                  width: context.width,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Daily Thought',
                            style: TextStyle(
                              color: AppColor.whiteText,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'MEDITATION 3-10 MIN',
                            style: TextStyle(
                              color: AppColor.whiteText,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/home/play_btn.png',
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
              height: 30,
            ),
            Text(
              'Recommended for you',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: AppColor.primaryText),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: context.height * 0.35 * 0.7 + 40 + 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Map data = recommendedList[index];
                    return RecommendedCard(
                        image: data['image'],
                        title: data['title'],
                        subTitle: data['subTitle'],
                        time: data['time']);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: recommendedList.length),
            )
          ],
        )),
      ),
    );
  }

  Widget _buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          'Good Morning, Shipon',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: AppColor.primaryText),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'We Wish you have a good day',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
              color: AppColor.secondaryText),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
