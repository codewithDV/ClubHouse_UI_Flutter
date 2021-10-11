import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hide extends StatefulWidget {
  const Hide({Key? key}) : super(key: key);

  @override
  _HideState createState() => _HideState();
}

class _HideState extends State<Hide> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                  Theme.of(context).scaffoldBackgroundColor
                ])),
      ),
    );
  }
}