import 'package:flutter/material.dart';

ClipRRect btobar() {
  return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0), topRight: Radius.circular(30)),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              size: 30,
              color: Colors.black,
            ),
            tooltip: 'dashboard',
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
            tooltip: 'dashboard',
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.black,
            ),
            tooltip: 'dashboard',
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(50)),
              child: CircleAvatar(
                child: ClipOval(
                    child: Image(
                  width: 60,
                  height: 60,
                  image: AssetImage('assets/images/user0.png'),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            tooltip: 'dashboard',
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ));
}
