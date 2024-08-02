import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('chat view')).animate().fadeIn();
  }
}
