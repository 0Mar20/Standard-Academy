import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (context, index) => Container(
              width: 100.0,
              height: 1.0,
              color: Colors.grey,
            ),
            itemBuilder: (context, index) => buildArticleItem(),
          ),
        ),
      ),
    );
  }
}

Widget buildArticleItem() => Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
        ),
        // color: Colors.amberAccent
      ),
      width: double.infinity,
      height: 350.0,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                topLeft: Radius.circular(50.0),
              ),
            ),
            width: double.infinity,
            height: 200.0,
            child: Image.asset(
              'lib/themes/images/plog2.jpg',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 8.0),
            child: Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 100.0,
            height: 1.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
