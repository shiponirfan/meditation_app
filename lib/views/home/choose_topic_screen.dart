import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_app/views/home/reminders_screen.dart';

class ChooseTopicScreen extends StatefulWidget {
  const ChooseTopicScreen({super.key});

  @override
  State<ChooseTopicScreen> createState() => _ChooseTopicScreenState();
}

class _ChooseTopicScreenState extends State<ChooseTopicScreen> {
  List<Map<String, String>> topicData = [
    {
      'image': 'assets/images/topic/t01.png',
      'title': 'Reduce Stress',
      'bg-color': '8e97fd',
      'text-color': 'ffeccc',
    },
    {
      'image': 'assets/images/topic/t02.png',
      'title': 'Improve Performance',
      'bg-color': 'FA6E5A',
      'text-color': 'FEF9F3',
    },
    {
      'image': 'assets/images/topic/t04.png',
      'title': 'Reduce Anxiety',
      'bg-color': 'FFCF86',
      'text-color': '3F414E',
    },
    {
      'image': 'assets/images/topic/t03.png',
      'title': 'Increase Happiness',
      'bg-color': 'feb18f',
      'text-color': '3F414E',
    },
    {
      'image': 'assets/images/topic/t05.png',
      'title': 'Personal Growth',
      'bg-color': '6CB28E',
      'text-color': 'FFECCC',
    },
    {
      'image': 'assets/images/topic/t06.png',
      'title': 'Better Sleep',
      'bg-color': '3F414E',
      'text-color': 'EBEAEC',
    },
    {
      'image': 'assets/images/topic/t01.png',
      'title': 'Reduce Stress',
      'bg-color': '8e97fd',
      'text-color': 'ffeccc',
    },
    {
      'image': 'assets/images/topic/t02.png',
      'title': 'Improve Performance',
      'bg-color': 'FA6E5A',
      'text-color': 'FEF9F3',
    },
    {
      'image': 'assets/images/topic/t04.png',
      'title': 'Reduce Anxiety',
      'bg-color': 'FFCF86',
      'text-color': '3F414E',
    },
    {
      'image': 'assets/images/topic/t03.png',
      'title': 'Increase Happiness',
      'bg-color': 'feb18f',
      'text-color': '3F414E',
    },
    {
      'image': 'assets/images/topic/t05.png',
      'title': 'Personal Growth',
      'bg-color': '6CB28E',
      'text-color': 'FFECCC',
    },
    {
      'image': 'assets/images/topic/t06.png',
      'title': 'Better Sleep',
      'bg-color': '3F414E',
      'text-color': 'EBEAEC',
    },
  ];

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
                          color: HexColor.formHex(topic['bg-color']!),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Image.asset(
                                topic['image']!,
                                fit: BoxFit.fitWidth,
                                width: double.maxFinite,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          topic['title']!,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: HexColor.formHex(
                                                topic['text-color']!),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          'What Brings you',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: AppColor.primaryText),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'to Silent Moon?',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 28,
              color: AppColor.primaryText),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'choose a topic to focus on:',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
              color: AppColor.secondaryText),
        ),
      ],
    );
  }

  void _onTapNavigateNextPage() {
    context.push(const RemindersScreen());
  }
}
