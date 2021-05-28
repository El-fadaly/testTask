import 'package:flutter/cupertino.dart';

class Lesson {
  Lesson(
      {@required this.title,
      @required this.duration,
      @required this.image,
      @required this.isPlaying});

  String title, image;
  int duration;
  bool isPlaying;
}
