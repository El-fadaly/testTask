import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maw3od_app/components/video.dart';
import 'package:maw3od_app/components/video_image_stack.dart';
import 'package:maw3od_app/constants.dart';

class HomePage extends StatefulWidget {
  static final String id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {
          setState(() {
            _selectedIndex = index;
          })
        },
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/trend.png'),
            ),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/account.png'),
            ),
            label: 'Account',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // header home
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 35.0,
                    ),
                  ],
                ),

                SizedBox(
                  height: 10.0,
                ),
                //continue
                Text(
                  'Continue Learning',
                  style: kTextAboveTextFieldStyle,
                ),

                // image section

                SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      VideoImageStack(
                        image: 'cont',
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      VideoImageStack(
                        image: 'cont1',
                      ),
                    ],
                  ),
                ),

                // for you
                SizedBox(
                  height: 10.0,
                ),

                Text(
                  'For You',
                  style: kTextAboveTextFieldStyle,
                ),

                SizedBox(
                  height: 10.0,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Video(
                      title: 'Lightroom lessons for begginnrs',
                      creator: 'Vasjen Katro',
                      imagetext: 'cow1.png',
                      tag: 'cow1',
                    ),
                    Video(
                      title: 'Create seamless pattern in adobe',
                      creator: 'Nuisotrt',
                      imagetext: 'wheel.png',
                      tag: 'wheel',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
