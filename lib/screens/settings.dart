import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_splash/screens/profile.dart';
import 'package:flutter_splash/screens/rewards.dart';
import 'package:flutter_splash/screens/terms_and_conditions.dart';
import 'package:flutter_svg/svg.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF85286B),
        automaticallyImplyLeading: true,
        title: Text('Settings'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
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
          padding:
              const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: SvgPicture.asset(
                            "lib/themes/images/user.svg",
                            color: Color(0xff70759A),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'UAE - Internal Medicine',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black54,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ProfileScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    color: Colors.blueGrey,
                    thickness: 1.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Center(
                  child: Text(
                    'Reward Points',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 70,
                  height: 70,
                  child: SvgPicture.asset(
                    "lib/themes/images/user.svg",
                    color: Color(0xff70759A),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '30 Pts',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Rewards(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.white,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFF9a499b),
                            const Color(0xFF3358a0),
                            const Color(0xFF4696d2),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Text(
                        'SEE ALL REWARDS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3.0,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TermsAndConditions(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Color(0xFF3358a0),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Text(
                        'TERMS & CONDITIONS',
                        style: TextStyle(
                          color: Color(0xFF3358a0),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2.0,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 200.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Color(0xFF3358a0),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Text(
                      'LOGOUT',
                      style: TextStyle(
                        color: Color(0xFF3358a0),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 200.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Color(0xFF3358a0),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Text(
                      'CONTACT US',
                      style: TextStyle(
                        color: Color(0xFF3358a0),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
