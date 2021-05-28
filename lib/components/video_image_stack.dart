import 'package:flutter/material.dart';

class VideoImageStack extends StatelessWidget {
  VideoImageStack({@required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(
              image: AssetImage('images/$image.png'),
              width: 197.0,
              fit: BoxFit.fill,
            ),
            Positioned(
              right: 1.0,
              bottom: 1.0,
              child: Card(
                elevation: 10.0,
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
            ),
          ],
        ),
      ],
    );
  }
}
