import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ebutton extends StatefulWidget {
  const Ebutton({Key? key}) : super(key: key);

  @override
  _EbuttonState createState() => _EbuttonState();
}

class _EbuttonState extends State<Ebutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        "+ Start a room",
        style: GoogleFonts.nunito(fontSize: 22),
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (BuildContext context) {
            return Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '+ Add Titile',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      child: Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 50,
                          height: 60,
                          padding: EdgeInsets.all(15),
                          child: Row(children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        radius: 25,
                                        child: Image.asset(
                                            'ass/image/roundflu.png'), // Provide your custom image
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1,
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
                  SizedBox(
                    height: 1,
                  ),
                  Divider(
                    thickness: 1,
                    height: 60,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Text(
                    'Start room for People I choose',
                    style: GoogleFonts.nunito(fontSize: 18),
                  ),
                  SafeArea(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Lets Go'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                  )


                ]));
          },


        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.0),
        ),
      ),
    );
  }
}
