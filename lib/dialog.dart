//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tictactoe/multiplayer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/computer.dart';

class DialogMulti extends StatelessWidget {
  String player1 = "";
  String player2 = "";

  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Dialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            children: [
              Text(
                "Multiplayer",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: GoogleFonts.laila().fontFamily,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Player 1",
                ),
                onChanged: (value) {
                  player1 = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Player 2",
                ),
                onChanged: (value) {
                  player2 = value;
                },
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MultiPlayer(key, player1, player2)));
                  },
                  child: Text("Continue")),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogSingle extends StatelessWidget {
  String player1 = "";

  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Dialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Container(
          height: 200,
          width: 300,
          child: Column(
            children: [
              Text(
                "Singleplayer",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: GoogleFonts.laila().fontFamily,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Player Name",
                ),
                onChanged: (value) {
                  player1 = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SinglePlayer(key, player1)));
                  },
                  child: Text("Continue")),
            ],
          ),
        ),
      ),
    );
  }
}
