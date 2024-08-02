import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('calendar view')).animate().fadeIn();
  }
}
