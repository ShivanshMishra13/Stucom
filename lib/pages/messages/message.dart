import 'package:flutter/material.dart';
import 'package:instaclone/pages/messages/messagescreen.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return MessageScreen();
  }
}
