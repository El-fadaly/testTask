import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maw3od_app/screens/videoes_page.dart';

import 'args.dart';

class Video extends StatelessWidget {
  Video(
      {@required this.creator,
      @required this.imagetext,
      @required this.title,
      @required this.tag});

  final String imagetext;
  final String title;
  final String creator;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, VideoesPage.id,
            arguments: Args(tag: tag, title: title, creator: creator));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Hero(
                tag: tag,
                child: Image(
                  image: AssetImage('images/$imagetext'),
                  fit: BoxFit.fill,
                  width: 375.0,
                ),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: Card(
                  elevation: 5.0,
                  color: Color(0xFFDFDFDF),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('images/watch.png'),
                        ),
                        Text('30m')
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(creator),
                  ],
                ),
                Image(
                  image: AssetImage('images/more.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
