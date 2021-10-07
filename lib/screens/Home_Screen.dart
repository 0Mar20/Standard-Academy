import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash/screens/BlogDetails_Screen.dart';
import 'package:flutter_splash/screens/Home.dart';
import 'package:flutter_splash/screens/Settings_Screen.dart';
import 'package:flutter_splash/screens/articles.dart';
import 'package:flutter_splash/screens/settings.dart';
import 'package:flutter_splash/screens/splash_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'Singup_screen.dart';
import 'Singup_screen.dart';
import 'api_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    Home(),
    Articles(),
    Articles(),
    Articles(),
    Articles(),
  ];

  List<String> titles = [
    'Home',
    'Infections',
    'Gynecology',
    'Diabetes',
    'Nutrition',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF85286B),
        automaticallyImplyLeading: false,
        title: Text(titles[currentIndex]),
        actions: <Widget>[
          IconButton(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset("lib/themes/images/user.svg",
                  color: Colors.white),
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Settings()));
            },
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF9a499b),
              const Color(0xFF3358a0),
              const Color(0xFF4696d2),
            ],
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            print(currentIndex);
          },
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.white),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset("lib/themes/images/Icon 9.svg",
                    color: Colors.white),
              ),
              title: Text(
                "Infections",
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset("lib/themes/images/Icon 10.svg",
                    color: Colors.white),
              ),
              title: Text(
                "Gynecology",
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset("lib/themes/images/Icon 11.svg",
                    color: Colors.white),
              ),
              title: Text(
                "Diabetes",
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset("lib/themes/images/Icon 12.svg",
                    color: Colors.white),
              ),
              title: Text(
                "Nutrition",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
