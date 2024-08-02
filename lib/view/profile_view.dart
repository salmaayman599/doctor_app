import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('profile view')).animate().fadeIn();
  }
}
