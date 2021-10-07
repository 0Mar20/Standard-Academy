import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_splash/screens/choose_your_country.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goMainScreen();
  }

  // 5 seconds later -> onDoneControl
  Future<Timer> goMainScreen() async {
    return new Timer(Duration(seconds: 4), onDoneControl);
  }

  // route to MainScreen
  onDoneControl() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ChooseYourCountry(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              const Color(0xFF85286B),
              const Color(0xFF9a499b),
              const Color(0xFF3358a0),
              const Color(0xFF4696d2),
            ])),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    "lib/themes/images/Logowhite.svg",
                    color: Colors.white,
                    width: 300,
                    height: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
