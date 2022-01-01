import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/computer.dart';
import 'package:tictactoe/dialog.dart';
import 'package:tictactoe/multiplayer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgimage.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(children: [
          SizedBox(
            height: 200,
          ),
          Text(
            "TicTacToe",
            style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.merriweather().fontFamily,
              fontSize: 65,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DialogSingle()));
            },
            child: Text(
              "Single Player",
              style: TextStyle(
                fontFamily: GoogleFonts.laila().fontFamily,
              ),
            ),
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
                backgroundColor:
                    MaterialStateProperty.all(Colors.black.withOpacity(0.1))),
          ),
          SizedBox(
            height: 75,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DialogMulti()));
            },
            child: Text(
              "Multi Player",
              style: TextStyle(
                fontFamily: GoogleFonts.laila().fontFamily,
              ),
            ),
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
                backgroundColor:
                    MaterialStateProperty.all(Colors.black.withOpacity(0.1))),
          ),
        ]),
      ),
    ));
  }
}
