// App Icons.

import 'package:flutter/material.dart';
import 'package:instaclone/pages/memePage/meme_page.dart';
import 'package:instaclone/pages/postpage/postPage.dart';
import 'package:instaclone/pages/tweetPage/tweet_page.dart';
import 'package:instaclone/pages/chatPage/chatPage.dart';

String userIcon = "assets/icons/user_icon.svg";
String keyIcon = "assets/icons/key_icon.svg";

// App Colors.

const Color g1 = Color(0xff755CB4);
const Color g2 = Color(0xffCD82DE);
const Color kInputColor = Color(0xff3C3C43);
const Color kButtonColor = Color(0xff78258B);
const Color kWhiteColor = Colors.white;

// Images.

String image1 = "assets/images/image_2.png";

var stories = [
  'assets/images/user0.png',
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user4.png',
];
var post = [
  ['assets/images/post0.jpg', 'assets/images/post1.jpg'],
  ['Sarah', 'Lana'],
  ['assets/images/user0.png', 'assets/images/user2.png']
];
//1 st element needs to be changed to user name when bakcend is implemented
var features = [
  ['Sarah', 'Posts', 'Memes', 'Tweets', 'Chat']
];
const feat = [
  Icons.image_outlined,
  Icons.play_circle_fill_outlined,
  Icons.chat_outlined,
  Icons.group_outlined
];

final featPages = [
  const Screen(),
  const Meme_page(),
  const Tweet_page(),
  const chatPage()
];

var showfeatures = true;
