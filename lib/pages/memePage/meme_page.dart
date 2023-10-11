import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instaclone/pages/loginPage/login_page.dart';
import 'package:instaclone/pages/memePage/post.dart';

import '../components/bottomBar.dart';
import '../components/stories.dart';

class Meme_page extends StatefulWidget {
  const Meme_page({super.key});

  @override
  State<Meme_page> createState() => _Meme_pageState();
}

class _Meme_pageState extends State<Meme_page> {
  var showfeatures = true;

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
                duration: const Duration(milliseconds: 1000),
                child: showfeatures ? Stories(2) : Container(),
              ),
              buildpost2(0),
              buildpost2(1),
            ],
          ),
          Positioned(
            right: 30,
            bottom: 30,
            child: AnimatedOpacity(
                opacity: showfeatures ? 0.00 : 1.00,
                duration: const Duration(seconds: 1),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(Icons.add),
                )),
          ),
        ]),
        bottomNavigationBar: btobar(),
      ),
    ]);
  }

  Padding appBar(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
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
                    icon: const Icon(Icons.feed_outlined)),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    icon: const Icon(Icons.login_outlined))
              ],
            )
          ]),
        ));
  }
}
