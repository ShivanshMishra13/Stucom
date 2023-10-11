import 'package:flutter/material.dart';
import 'package:instaclone/pages/chatPage/chatPage.dart';
import 'package:instaclone/pages/loginPage/login_page.dart';
import 'package:instaclone/pages/memePage/meme_page.dart';
import 'package:instaclone/pages/postpage/postPage.dart';
import 'package:instaclone/pages/tweetPage/tweet_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
      home: Screen(),
    );
  }
}
