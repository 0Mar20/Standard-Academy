import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_splash/screens/splash_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'Singup_screen.dart';
import 'Singup_screen.dart';
import 'api_screen.dart';

class BlogDetailsScreen extends StatefulWidget {
  @override
  _BlogDetailsScreenState createState() => _BlogDetailsScreenState();
}

class _BlogDetailsScreenState extends State<BlogDetailsScreen> {
  bool checkedValue1 = false;
  bool checkedValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF85286B),
        title: const Text('Infections  '),
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
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 5, right: 5, bottom: 5),
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
        child: Container(
          padding:
              const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(children: <Widget>[
            Row(
              children: [],
            ),
            Container(
              width: 499,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('lib/themes/images/plog4.jpg'),
                  ),
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt  ",
                    style: TextStyle(color: Colors.black, fontSize: 16)),

                Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tinciduntLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tinciduntLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt  ",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                Divider(
                  color: Colors.grey,
                ),
                Text("Answer the following questions to earn points",
                    style: TextStyle(color: Color(0xFF85286B), fontSize: 14)),
                SizedBox(height: 5),
                // guestion container
                Container(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 5, right: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF85286B),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        title: Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: checkedValue1,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue1 = newValue;
                            checkedValue2 = false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        title: Text(
                          "No",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: checkedValue2,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue2 = newValue;
                            checkedValue1 = false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Container(
                          width: 120.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Colors.white,
                              ),
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3.0,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
