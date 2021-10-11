import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class PButton extends StatefulWidget {
  const PButton({Key? key}) : super(key: key);

  @override
  _PButtonState createState() => _PButtonState();
}

class _PButtonState extends State<PButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      right: 40,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.grid_view,
            size: 50,
          ),
          SizedBox(
            width: 20,
          ),
          StartRoomButton(),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.arrow_right_outlined,
            size: 50,
          )
        ],
      ),
    );
  }
}
