import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TermsAndConditions extends StatefulWidget {
  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF85286B),
        automaticallyImplyLeading: true,
        title: Text('Terms & Conditions'),
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
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10,
            right: 10,
            bottom: 20,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Morbi dolor lacus, tincidunt eget urna vel, cursus cursus massa. In lacinia tristique nibh, nec malesuada orci viverra et. Suspendisse potenti. Suspendisse maximus luctus neque, nec pharetra orci lobortis at. Nulla id pharetra nunc. Pellentesque rhoncus nulla sit amet malesuada vestibulum. Ut cursus scelerisque pretium. Nullam ante quam, commodo sed feugiat quis, molestie eu risus. Curabitur dapibus enim non vulputate viverra. Suspendisse dictum metus quis nisl varius interdum. Praesent pulvinar tempor tincidunt. Aliquam posuere bibendum elementum. Quisque sit amet mattis quam, nec commodo turpis. Sed bibendum purus pretium ipsum consectetur, nec',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Morbi dolor lacus, tincidunt eget urna vel, cursus cursus massa. In lacinia tristique nibh, nec malesuada orci viverra et. Suspendisse potenti. Suspendisse maximus luctus neque, nec pharetra orci lobortis at. Nulla id pharetra nunc. Pellentesque rhoncus nulla sit amet malesuada vestibulum',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Morbi dolor lacus, tincidunt eget urna vel, cursus cursus massa. In lacinia tristique nibh, nec malesuada orci viverra et. Suspendisse potenti. Suspendisse maximus luctus neque, nec pharetra orci lobortis at. Nulla id pharetra nunc. Pellentesque rhoncus nulla sit amet malesuada vestibulum. Ut cursus scelerisque pretium. Nullam ante quam, commodo sed feugiat quis, molestie eu risus. Curabitur dapibus enim non vulputate viverra. Suspendisse dictum metus quis nisl varius interdum. Praesent pulvinar tempor tincidunt. Aliquam posuere bibendum elementum. Quisque sit amet mattis quam, nec commodo turpis. Sed bibendum purus pretium ipsum consectetur, nec rutrum urna volutpat',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
