import 'package:flutter/material.dart';
import 'package:instaclone/test/consts.dart';
import '../memePage/meme_page.dart';

Container Stories(selectedpage) {
  return Container(
    width: double.infinity,
    height: 100,
    color: Colors.white,
    child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(children: [
            AnimatedOpacity(
              opacity: index == 0 || index == selectedpage ? 1.00 : 0.25,
              duration: Duration(milliseconds: 1000),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                featPages[index > 0 ? index - 1 : 0]),
                      )
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purpleAccent,
                                offset: Offset(0, 2),
                                blurRadius: 6)
                          ]),
                      child:
                          index == 0 ? profileup(index) : Icon(feat[index - 1]),
                    ),
                  ),
                  Text(features[0][index])
                ],
              ),
            ),
            if (index == 0) uploadstory()
          ]);
        }),
  );
}

CircleAvatar profileup(int index) {
  return CircleAvatar(
    child: ClipOval(
        child: Image(
      width: 60,
      height: 60,
      image: AssetImage('assets/images/user' + index.toString() + '.png'),
      fit: BoxFit.cover,
    )),
  );
}

Positioned uploadstory() {
  return Positioned(
      left: 40,
      right: 0,
      top: 40,
      bottom: 20,
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.blue),
        child: Icon(Icons.add),
      ));
}
