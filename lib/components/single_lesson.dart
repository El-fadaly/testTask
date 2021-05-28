import 'package:flutter/material.dart';

class SingleLesson extends StatelessWidget {
  SingleLesson({
    @required this.isPlaying,
    @required this.title,
    @required this.duration,
    @required this.image,
  });

  final bool isPlaying;
  final String title;
  final String image;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Material(
            child: Image(
              image: AssetImage('images/$image.png'),
            ),
            elevation: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                '$duration min',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          SizedBox(
            width: 80.0,
          ),
          isPlaying
              ? Image(image: AssetImage('images/playing.png'))
              : SizedBox(
                  width: 24.0,
                ),
          Image(
            image: AssetImage('images/more.png'),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
