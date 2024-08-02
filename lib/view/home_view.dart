import 'package:doctor_app/widget/categories.dart';
import 'package:doctor_app/widget/doctor.dart';
import 'package:doctor_app/widget/header.dart';
import 'package:doctor_app/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              // Header
              HeaderWidget(),
              // Doctor widget
              DoctorWidget(
                color: Color(0xFF4894FE),
                title: "Dr.Imran syahir",
                subTitle: "General Doctor",
                time: "11:00 - 12:00 AM",
                date: "Sunday, 12 June",
              ),
              // Search widget
              InputWidget(),
              // Grid view
              GirdContainerWidget(),
              // List view
              ListDoctorsWidget(),

              // Buttons
              // TextButton(onPressed: () {}, child: Text('Text Button')),
              // ElevatedButton(onPressed: () {}, child: Text('Text Button')),
              // TextButton(onPressed: () {}, child: Text('Text Button')),

              //Animations
              // Text(
              //   "Hello World!",
              //   style: TextStyle(fontSize: 40),
              // ).animate(
              //   onComplete: (controller) {
              //     print("COMPLETED");
              //   },
              // ).rotate()
            ],
          ),
        ).animate().fadeIn(),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text('Header'),
            )
          ],
        ),
      ),
    );
  }
}

class ListDoctorsWidget extends StatelessWidget {
  const ListDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 4,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          return DoctorWidget(
            title: "Dr. Ahmed Ali",
            subTitle: "Doctor",
            time: "10:00 - 8:00 AM",
            date: "Sunday, 15 June",
            titleColor: Color(0xFF0D1B34),
            subTitleColor: Color(0xFF8696BB),
            dateColor: Color(0xFFFEB052),
            timeColor: Color(0xFF4894FE),
          );
        },
      ),
    );
  }
}

class GirdContainerWidget extends StatelessWidget {
  const GirdContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 130,
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          const CategoriesWidget(
            text: "Covid 19",
            iconPath: "assets/svg/sun.svg",
          ),
          const CategoriesWidget(
            text: "Doctor",
            iconPath: "assets/svg/profile-add.svg",
          ),
          const CategoriesWidget(
            text: "Medicine",
            iconPath: "assets/svg/link.svg",
          ),
          const CategoriesWidget(
            text: "Hospital",
            iconPath: "assets/svg/hospital.svg",
          ),
        ],
      ),
    );
  }
}
