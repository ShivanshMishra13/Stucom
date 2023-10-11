import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instaclone/pages/components/floatButton.dart';
import 'package:instaclone/pages/loginPage/login_page.dart';
import 'package:instaclone/pages/memePage/meme_page.dart';
import 'package:instaclone/pages/tweetPage/poll.dart';
import 'package:instaclone/test/consts.dart';
import 'package:instaclone/pages/tweetPage/post.dart';
import '../components/bottomBar.dart';
import '../components/stories.dart';

var selecteditem = 0;

var tapped = false;

class Tweet_page extends StatefulWidget {
  const Tweet_page({super.key});

  @override
  State<Tweet_page> createState() => _Tweet_page();
}

class _Tweet_page extends State<Tweet_page> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: const Color(0xFFEDF0F6),
        body: Stack(children: [
          ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              appBar(context),
              AnimatedOpacity(
                opacity: showfeatures ? 1.00 : 0.00,
                duration: Duration(milliseconds: 1000),
                child: showfeatures ? Stories(3) : Container(),
              ),
              Polls(0, selecteditem),
              buildTweet(0, selecteditem),
              buildTweet(1, selecteditem),
              buildTweet(0, selecteditem)
            ],
          ),
          floatbt(showfeatures),
        ]),
        bottomNavigationBar: btobar(),
      ),
    ]);
  }

  Padding appBar(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          width: MediaQuery.of(context).size.width,
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              "assets/images/logof.png",
              height: 120,
              width: 120,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () => {
                          setState(
                            () {
                              showfeatures = !showfeatures;
                            },
                          )
                        },
                    icon: Icon(Icons.feed_outlined)),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    icon: Icon(Icons.login_outlined))
              ],
            )
          ]),
        ));
  }
}
