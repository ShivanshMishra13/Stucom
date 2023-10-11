import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(physics: AlwaysScrollableScrollPhysics(), children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.arrow_back_ios_outlined),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: const CircleAvatar(
                                      child: ClipOval(
                                          child: Image(
                                        width: 80,
                                        height: 80,
                                        image: AssetImage(
                                            'assets/images/user0.png'),
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green),
                                    ),
                                  )
                                ]),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Michali Hudson",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Active now",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.favorite_border_outlined),
                          )
                        ],
                      )),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1000,
                decoration:
                    BoxDecoration(color: Color.fromARGB(179, 239, 239, 239)),
                child: Column(
                  children: [
                    recmsg(
                        "Hello,how are you doing is there anything special going on "),
                    sendmsg("I am doing fine what are you upto  ")
                  ],
                ),
              )
            ],
          ),
        ]),
        Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
              ),
            ))
      ]),
    );
  }

  recmsg(text) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(179, 239, 239, 239)),
            child: const CircleAvatar(
              child: ClipOval(
                  child: Image(
                width: 30,
                height: 30,
                image: AssetImage('assets/images/user0.png'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 180,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(text),
            ),
          )
        ],
      ),
    );
  }

  sendmsg(text) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 180,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
