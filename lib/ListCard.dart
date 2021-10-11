import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatefulWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
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
}
