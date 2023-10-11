import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instaclone/test/consts.dart';

Padding buildpost(numi) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 5,
    ),
    child: Container(
        height: 640,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      margin: const EdgeInsets.all(10),
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 2),
                                blurRadius: 6)
                          ]),
                      child: CircleAvatar(
                        child: ClipOval(
                            child: Image(
                          image: AssetImage(stories[numi]),
                          fit: BoxFit.fill,
                        )),
                      ),
                    ),
                    title: Text(
                      post[1][numi],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: const Text('5 min ago'),
                    trailing: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 5),
                            blurRadius: 8)
                      ],
                      image: DecorationImage(
                          image: AssetImage(post[0][numi]), fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => print('clicked'),
                                  icon: const Icon(
                                    Icons.favorite,
                                  ),
                                  iconSize: 20,
                                ),
                                Text(
                                  '35345',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => print('clicked'),
                                  icon: const Icon(
                                    Icons.chat,
                                  ),
                                  iconSize: 20,
                                ),
                                Text(
                                  '735',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ]),
                          IconButton(
                            onPressed: () => print('clicked'),
                            icon: Icon(Icons.bookmark_border),
                            iconSize: 20,
                          )
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 10)
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,and more recently with desktop publishing software ",
                        maxLines: 2,
                        style: GoogleFonts.robotoFlex(
                            textStyle: const TextStyle(
                          fontSize: 10,
                        )),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ))
        ])),
  );
}
