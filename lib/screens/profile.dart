import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash/widgets/btn_field.dart';
import 'package:flutter_splash/widgets/custom_texr_field.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final userNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final userEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF85286B),
        automaticallyImplyLeading: true,
        title: Text('Profile'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
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
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 100,
                          child: Image(
                              image: AssetImage('lib/themes/images/Logo.png'),
                              height: 200,
                              width: 200),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            child: SvgPicture.asset(
                              "lib/themes/images/user.svg",
                              color: Color(0xff70759A),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width * 0.6),
                                  child: TextFormField(
                                    controller: userEmailController,
                                    decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText:
                                            'Tap to update your profile photo',
                                        labelStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Your email: sample@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 4.0),
                    //   child: Text(
                    //     "Name",
                    //     style: TextStyle(
                    //       color: Colors.black45,
                    //       fontSize: 17,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          labelText: 'John Doe',
                          hintText: 'Enter your name',
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 25,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 4.0),
                    //   child: Text(
                    //     "Country",
                    //     style: TextStyle(
                    //       color: Colors.black45,
                    //       fontSize: 17,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          labelText: 'UAE',
                          hintText: 'Your country',
                          suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // BtnField(
                    //   title: "UAE",
                    //   onTap: () {},
                    // ),
                    // SizedBox(
                    //   height: 25,
                    // ),
                    Container(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          labelText: 'Internal Medicine',
                          hintText: 'Your specialty',
                          suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 4.0),
                    //   child: Text(
                    //     "Country",
                    //     style: TextStyle(
                    //       color: Colors.black45,
                    //       fontSize: 17,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          labelText: '+00 33 567 8654',
                          hintText: 'Your phone number',
                        ),
                      ),
                    ),
                    // BtnField(
                    //   title: "UAE",
                    //   onTap: () {},
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 4.0),
                    //   child: Text(
                    //     "Phone number",
                    //     style: TextStyle(
                    //       color: Colors.black45,
                    //       fontSize: 17,
                    //     ),
                    //   ),
                    // ),
                    // CustomTextField(
                    //   controller: phoneNumberController,
                    //   hint: "+00 33 567 8654",
                    //   keyboardType: TextInputType.number,
                    //   prefixIcon: Icon(Icons.person),
                    // ),
                    // SizedBox(
                    //   height: 25,
                    // ),
                    Container(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          labelText: '************',
                          hintText: 'Your password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 60.0, horizontal: 80),
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
                            'SAVE',
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
