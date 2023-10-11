import 'package:flutter/material.dart';

Positioned floatbt(showfeatures) {
  return Positioned(
    right: 30,
    bottom: 30,
    child: AnimatedOpacity(
        opacity: showfeatures ? 0.00 : 1.00,
        duration: Duration(seconds: 1),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(30)),
          child: Icon(Icons.add),
        )),
  );
}
