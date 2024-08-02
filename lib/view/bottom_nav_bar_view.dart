import 'package:doctor_app/view/calendar_view.dart';
import 'package:doctor_app/view/chat_view.dart';
import 'package:doctor_app/view/home_view.dart';
import 'package:doctor_app/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  List<Widget> widgets = const [HomeView(), CalendarView(), ChatView(), ProfileView()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/home.svg", color: index == 0 ? const Color(0xFF63B4FF) : const Color(0xFF8696BB)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/calendar.svg",
                color: index == 1 ? const Color(0xFF63B4FF) : const Color(0xFF8696BB)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:
                SvgPicture.asset("assets/svg/message.svg", color: index == 2 ? const Color(0xFF63B4FF) : const Color(0xFF8696BB)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:
                SvgPicture.asset("assets/svg/profile.svg", color: index == 3 ? const Color(0xFF63B4FF) : const Color(0xFF8696BB)),
            label: "",
          ),
        ],
      ),
    );
  }
}
