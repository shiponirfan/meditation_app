import 'package:flutter/cupertino.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/utils/app_extension.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.time});

  final String image;
  final String title;
  final String subTitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.asset(
            image,
            width: context.width,
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColor.primaryText,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              subTitle,
              style: TextStyle(
                color: AppColor.secondaryText,
                fontWeight: FontWeight.w500,
                fontSize: 11,
              ),
            ),
            Container(
              width: 5,
              height: 5,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: AppColor.primaryText,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Text(
              time,
              style: TextStyle(
                color: AppColor.secondaryText,
                fontWeight: FontWeight.w500,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
