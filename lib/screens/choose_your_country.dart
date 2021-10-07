import 'package:flutter/material.dart';
import 'package:flutter_splash/screens/main_screen.dart';

class ChooseYourCountry extends StatefulWidget {
  const ChooseYourCountry({Key key}) : super(key: key);

  @override
  _ChooseYourCountryState createState() => _ChooseYourCountryState();
}

class _ChooseYourCountryState extends State<ChooseYourCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: 60.0, left: 20, right: 20, bottom: 70),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF85286B),
              const Color(0xFF9a499b),
              const Color(0xFF3358a0),
              const Color(0xFF4696d2),
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image(
                      image: AssetImage('lib/themes/images/Logo.png'),
                      height: 200,
                      width: 200),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 1.0,
                ),
              ),
              Text(
                'Select your country',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      buildCountryElement(
                        'lib/themes/images/Flag-Egypt-circle-png.png',
                        'Egypt',
                        context,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      buildCountryElement(
                        'lib/themes/images/lebanon.png',
                        'Lebanon',
                        context,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      buildCountryElement(
                        'lib/themes/images/saudi.png',
                        'Saudi Arabia',
                        context,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      buildCountryElement(
                        'lib/themes/images/iraq.png',
                        'Iraq',
                        context,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCountryElement(String flag, String name, context) => InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            flag,
          ),
          radius: 25.0,
        ),
        title: Text(
          name,
        ),
      ),
    );
