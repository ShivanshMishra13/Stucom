import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instaclone/pages/components/bottomBar.dart';
import 'package:instaclone/pages/loginPage/login_page.dart';
import 'post.dart';
import 'package:instaclone/test/consts.dart';

import '../components/stories.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _Screen();
}

class _Screen extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
          backgroundColor: const Color(0xFFEDF0F6),
          body: Stack(children: [
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: <Widget>[
                appbar(context),
                AnimatedOpacity(
                  opacity: showfeatures ? 1.00 : 0.00,
                  duration: const Duration(milliseconds: 1000),
                  child: showfeatures ? Stories(1) : Container(),
                ),
                buildpost(0),
                buildpost(1),
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
          bottomNavigationBar: btobar()),
    ]);
  }

  Padding appbar(BuildContext context) {
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
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    icon: const Icon(Icons.login_outlined))
              ],
            )
          ]),
        ));
  }
}
