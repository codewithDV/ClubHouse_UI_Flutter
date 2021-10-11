import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Ebutton.dart';
import 'Hide.dart';
import 'ListCard.dart';
import 'Pbutton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade50,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail_outline,
                  color: Colors.black,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.calendar_today,
                  color: Colors.black,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.doorbell_outlined,
                  color: Colors.black,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.memory_outlined,
                  color: Colors.black,
                  size: 30,
                ))
          ],
        ),
        backgroundColor: Colors.orange.shade50,
        body: Stack(
          children: [ListCard(), Hide(), PButton()],
        ));
  }
}

class StartRoomButton extends StatefulWidget {
  const StartRoomButton({Key? key}) : super(key: key);

  @override
  _StartRoomButtonState createState() => _StartRoomButtonState();
}

class _StartRoomButtonState extends State<StartRoomButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 60,
        left: 90,
        child: Container(
          height: 70,
          padding: const EdgeInsets.all(12),
          child: Ebutton(),
        ));
  }
}
