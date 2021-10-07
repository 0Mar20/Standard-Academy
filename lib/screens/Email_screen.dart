import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash/screens/splash_screen.dart';

import 'Singup_screen.dart';
import 'Singup_screen.dart';
import 'api_screen.dart';

class ResendScreen extends StatefulWidget {
  @override
  _ResendScreenState createState() => _ResendScreenState();
}

class _ResendScreenState extends State<ResendScreen> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(

      body: Container(
         padding: const EdgeInsets.only(top:60.0 , left:20 , right:20 , bottom:20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                 const Color( 0xFF85286B), 
                  const Color( 0xFF9a499b), 
                    const Color(  0xFF3358a0), 
                   const Color(0xFF4696d2), 
                 
               ])
              ),
              
      child :Container(

         decoration: BoxDecoration(
         color:Colors.white ,
         borderRadius: BorderRadius.circular(10),
              ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
           
                    child:   Image(
                  image: AssetImage('lib/themes/images/Logo.png'),
                  height: 200,
                  width: 200),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                    width: 100,
                    height: 50,
           
                    child:   Image(
                  image: AssetImage('lib/themes/images/mail.jpg'),
                  height: 200,
                  width: 200),
                    ),
              ),
            ),
            Text( "Confirm your email addres \n We sent a confirmation email to: \nemail.sample@gmail.com \nCheck your email and click on \nthe confirmation link to continue. \nPlease check your junk/spam box" ,    textAlign: TextAlign.center, style: TextStyle(color: Colors.grey.withOpacity(1.0))), 
          SizedBox(height:60),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                 const Color( 0xFF85286B), 
                  const Color( 0xFF9a499b), 
                    const Color(  0xFF3358a0), 
                   const Color(0xFF4696d2), 
                 
               ]),
                  borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Resend Code',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
      
          ],
        ),
      ),
    
      ),
     );
  }
}
