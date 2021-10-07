import 'package:flutter/material.dart';

class RedeemContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.9
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            (new Container(
              height: 70.0,
//        width: MediaQuery.of(context).size.width*0.4,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage('lib/themes/images/plog2.jpg'),
                    fit: BoxFit.fill),
              ),
            )),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: new Text(
                "Lorem ipsum dolor sit amet, ectetuer adipisc elit, sed diam...More\n\nAliquam erate volutpat. Utwisi enim ad minim...",
                textDirection: TextDirection.ltr,
                style: new TextStyle(fontSize: 14.0, color: Colors.black),
                maxLines: null,
              ),
            ),
            Center(
              child: Text(
                "30 Pts",
                style: TextStyle(
                    color: Color(0xFF85286B),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
        Row (
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFF85286B),
                            const Color(0xFF9a499b),
                          ]),
                      borderRadius: BorderRadius.circular(10)),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'REEDEEM',
                      style: TextStyle(
                          color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
