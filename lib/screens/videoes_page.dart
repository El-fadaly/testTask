import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:maw3od_app/components/args.dart';
import 'package:maw3od_app/components/lessons.dart';
import 'package:maw3od_app/components/single_lesson.dart';

class VideoesPage extends StatelessWidget {
  static final String id = 'VideoesPage';
  bool isPlaying = true;

  Lessons lessonListHandler = Lessons();

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as Args;
    print(args.tag);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: 'wheelVideo',
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('images/${args.tag}.png'),
                      width: double.infinity,
                    ),
                  ),

                  //center play
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Transform(
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.forward_5_outlined,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.play_circle_outline_sharp,
                              size: 60.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.forward_5_outlined,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.share_outlined,
                            size: 27.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // current played time
              SizedBox(
                height: 10.0,
                child: LinearProgressIndicator(
                  value: .5,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF7AFFBC)),
                  backgroundColor: Color(0xFFD1D1D1),
                ),
              ),
              //lesson number
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lesson 1',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '2,100,300 Views',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/more.png'),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: lessonListHandler.getLessonsList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
