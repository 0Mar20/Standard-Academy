import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'BlogDetails_Screen.dart';
import 'Settings_Screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          padding:
              const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              buildLatestItem(
                context: context,
                categoryIcon: 'lib/themes/images/Icon 9.svg',
                categoryTitle: 'Infections',
              ),
              buildLatestItem(
                context: context,
                categoryIcon: 'lib/themes/images/Icon 10.svg',
                categoryTitle: 'Gynecology',
              ),
              buildLatestItem(
                context: context,
                categoryIcon: 'lib/themes/images/Icon 11.svg',
                categoryTitle: 'Diabetes',
              ),
              buildLatestItem(
                context: context,
                categoryIcon: 'lib/themes/images/Icon 12.svg',
                categoryTitle: 'Nutrition',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildLatestItem({context, String categoryIcon, String categoryTitle}) =>
    Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  categoryIcon,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                ' Latest In $categoryTitle',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlogDetailsScreen(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: AssetImage('lib/themes/images/plog4.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Educated women increasingly likely to have... ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "07 JUL, 2021",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 15.0,
              ),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
