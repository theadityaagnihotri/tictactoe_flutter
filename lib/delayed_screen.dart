import 'dart:async';
import 'dart:ui';

import 'package:flutter/src/material/progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        width: 300,
                        child: Center(
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: GoogleFonts.arapey().fontFamily,
                              fontSize: 50,
                            ),
                          ),
                        )),
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      strokeWidth: 1,
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
