import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.sleepBg,
      appBar: AppBar(
        backgroundColor: AppColor.sleepBg,
        elevation: 0,
        leading: Container(),
        title: const Text(
          'Sleep Music',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
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
              SizedBox(
                height: 8,
              ),
              Text(
                sleepData['title'],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                sleepData['subtitle'],
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          );
        },
      ),
    );
  }
}
