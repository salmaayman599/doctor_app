import 'package:doctor_app/view/details_view.dart';
import 'package:doctor_app/widget/icon_text.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String subTitle;
  final String date;

  final String time;
  final Color titleColor, subTitleColor, dateColor, timeColor;

  const DoctorWidget({
    super.key,
    this.color = Colors.white,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.time,
    this.titleColor = Colors.white,
    this.subTitleColor = Colors.white,
    this.dateColor = Colors.white,
    this.timeColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to doctor details
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DoctorDetailsView(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset("assets/images/profile.png"),
              title: Text(
                title,
                style: TextStyle(color: titleColor, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                subTitle,
                style: TextStyle(color: subTitleColor, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
            ),
            Divider(
              color: Colors.white.withOpacity(0.14),
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  IconTextWidget(
                    color: dateColor,
                    iconPath: "assets/svg/calendar.svg",
                    text: date,
                  ),
                  const Spacer(),
                  IconTextWidget(
                    color: timeColor,
                    iconPath: "assets/svg/clock.svg",
                    text: time,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
