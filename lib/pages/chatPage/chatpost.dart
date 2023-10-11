import 'package:flutter/material.dart';
import 'package:instaclone/pages/messages/message.dart';
import 'package:instaclone/test/consts.dart';

chatscreen(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: false,
            keyboardType: TextInputType.text,
            style: const TextStyle(color: kInputColor),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
              filled: true,
              hintText: "Username",
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
              ),
              fillColor: kWhiteColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(37),
              ),
            ),
          ),
        ),
        chatcon(context),
        chatcon(context),
        chatcon(context),
        chatcon(context)
      ],
    ),
  );
}

chatcon(context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Message()),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        child: ClipOval(
                            child: Image(
                          width: 70,
                          height: 70,
                          image: AssetImage('assets/images/user0.png'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "It is a personal group to have fun ",
                        style: TextStyle(fontWeight: FontWeight.w400),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "3+",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )),
    ),
  );
}
