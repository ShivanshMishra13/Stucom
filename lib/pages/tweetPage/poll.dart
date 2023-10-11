import 'package:flutter/material.dart';
import 'package:instaclone/test/consts.dart';

class Polls extends StatefulWidget {
  int numi = 1;
  int selecteditem = 0;

  Polls(this.numi, this.selecteditem);

  @override
  State<Polls> createState() => _PollsState();
}

class _PollsState extends State<Polls> {
  var tapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Container(
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
                            image: AssetImage(stories[widget.numi]),
                            fit: BoxFit.fill,
                          )),
                        ),
                      ),
                      title: Text(
                        post[1][widget.numi],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text('5 min ago'),
                      trailing: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: 1,
                      duration: Duration(milliseconds: 500),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.selecteditem = widget.numi;
                          });
                        },
                        child: Container(
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
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Should i go to school on monday ?",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        tapped = !tapped;
                                      });
                                    },
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          polltap("Yes", 50),
                                          polltap("No", 35),
                                          polltap("Maybe", 15)
                                        ]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
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
                    )
                  ],
                ))
          ])),
    );
    ;
  }

  Padding polltap(optiontitle, optionpercentage) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 35,
          //width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(20)),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(optiontitle)),
            ),
            AnimatedOpacity(
              opacity: tapped ? 1 : 0.00,
              duration: Duration(seconds: 1),
              child: Container(
                height: 35,
                width: (optionpercentage * MediaQuery.of(context).size.width) /
                    100,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(optionpercentage.toString() + "%"),
                ),
              ),
            ),
          ]),
        ));
  }
}
