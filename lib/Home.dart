import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  Icons.book_outlined,
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
          child: ElevatedButton(
            child: Text(
              "+ Start a room",
              style: GoogleFonts.nunito(fontSize: 22),
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: Column(children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '+ Add Titile',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            child: Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(15),
                                child: Row(children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            child: CircleAvatar(
                                              radius: 30,
                                              child: Image.asset(
                                                  'ass/image/avtar2.jpeg'), // Provide your custom image
                                            ),
                                          ),
                                          Text('Flutter dev'),
                                        ],
                                      ),
                                    ],
                                  )
                                ]),
                              );
                            },
                          ),
                        )),
                        Divider(
                          thickness: 1,
                          height: 60,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Text(
                          'Start room fpr People I choose',
                          style: GoogleFonts.nunito(fontSize: 18),
                        ),
                        ElevatedButton(onPressed: (){}, child: Text('Lets go',style: GoogleFonts.nunito(fontSize: 15 ),))

                      ]));
                },
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          )),
    );
  }
}

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

Widget PButton() {
  return Positioned(
    bottom: 40,
    right: 40,
    child: Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.place,
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
          Icons.grid_view,
          size: 50,
        )
      ],
    ),
  );
}

Widget ListCard() {
  return ListView.builder(
    itemCount: 20,
    itemBuilder: (context, index) {
      return Card(
          elevation: 2,
          margin: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                        child: Text(
                      'STARTUP CLUB',
                      style: GoogleFonts.nunito(fontSize: 18),
                    )),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      child: Icon(
                        Icons.home,
                        size: 19,
                        color: Colors.green,
                      ),
                    ),
                    (Spacer()),
                    Opacity(
                      opacity: (0.30),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.more_horiz,
                        ),
                      ),
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Masterclass: Write a Teach',
                      style: GoogleFonts.nunito(fontSize: 20),
                      textAlign: TextAlign.left,
                    )),
                Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Resume That Pays',
                      style: GoogleFonts.nunito(fontSize: 19),
                      textAlign: TextAlign.left,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Stack(clipBehavior: Clip.none, children: <Widget>[
                      Positioned(
                        left: 25,
                        top: 15,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.red,
                          child: Image.asset(
                              'ass/image/avtar2.jpeg'), // Provide your custom image
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.red,
                            child: Image.asset(
                                'ass/image/avtar2.jpeg'), // Provide your custom image
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Kate Pozenik',
                              style: GoogleFonts.nunito(fontSize: 20),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Opacity(
                                opacity: 0.7,
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Nikita Gupta',
                              style: GoogleFonts.nunito(fontSize: 20),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Opacity(
                                opacity: 0.7,
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Mike Tomsello',
                              style: GoogleFonts.nunito(fontSize: 20),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Opacity(
                                opacity: 0.7,
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Opacity(
                                opacity: 0.7,
                                child: Text(
                                  '93',
                                  style: GoogleFonts.nunito(fontSize: 18),
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            Opacity(
                                opacity: 0.7,
                                child: Icon(Icons.assignment_ind_sharp)),
                            SizedBox(
                              width: 5,
                            ),
                            Text('/'),
                            SizedBox(
                              width: 5,
                            ),
                            Opacity(
                                opacity: 0.7,
                                child: Text(
                                  '7',
                                  style: GoogleFonts.nunito(fontSize: 18),
                                )),
                            SizedBox(
                              width: 2,
                            ),
                            Opacity(
                                opacity: 0.7,
                                child: Icon((Icons.comment_bank_outlined))),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ])));
    },
  );
}
