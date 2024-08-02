import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesWidget extends StatelessWidget {
  final String text;
  final String iconPath;
  const CategoriesWidget({super.key, required this.text, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          child: SvgPicture.asset(iconPath, height: 30, width: 30),
          backgroundColor: Color(0xFFFAFAFA),
        ),
        Text(
          text,
          style: TextStyle(color: Color(0xFF8696BB), fontSize: 15),
        )
      ],
    );
  }
}
