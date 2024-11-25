import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:meditation_app/widget/course_voice_btn.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  int voiceIsSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  pinned: true,
                  collapsedHeight: 80,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  expandedHeight: context.width * 0.6,
                  leadingWidth: 75,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/course/back_btn.png',
                        width: 55,
                        height: 55,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  actions: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/course/heart_btn.png',
                        width: 55,
                        height: 55,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/course/download_btn.png',
                          width: 55,
                          height: 55,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/course/header_bg.png',
                        width: context.width,
                        height: context.height,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ];
          },
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Happy Morning',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryText),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'COURSE',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.secondaryText),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Ease the mind into a restful night’s sleep  with these deep, amblent tones.',
                  style: TextStyle(fontSize: 16, color: AppColor.secondaryText),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/course/heart.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        '24.234 Favorites',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColor.secondaryText),
                      ),
                    ),
                    Image.asset(
                      'assets/images/course/headphone.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        '34.234 Listening',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColor.secondaryText),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Pick a Narrator',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryText),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CourseVoiceBtn(
                      title: 'MALE VOICE',
                      isSelected: voiceIsSelected == 0,
                      onPressed: () {
                        setState(() {
                          voiceIsSelected = 0;
                        });
                      },
                    ),
                    CourseVoiceBtn(
                      title: 'FEMALE VOICE',
                      isSelected: voiceIsSelected == 1,
                      onPressed: () {
                        setState(() {
                          voiceIsSelected = 1;
                        });
                      },
                    )
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  height: 0,
                  color: AppColor.secondaryText,
                ),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              index == 0
                                  ? 'assets/images/course/play_btn_color.png'
                                  : 'assets/images/course/play_btn.png',
                              width: 40,
                              height: 40,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Focus Attention',
                                  style: TextStyle(
                                    color: AppColor.primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '10 MIN',
                                  style: TextStyle(
                                    color: AppColor.secondaryText,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 0.5,
                        height: 0,
                        color: AppColor.secondaryText,
                      );
                    },
                    itemCount: 10)
              ],
            ),
          )),
    );
  }
}
