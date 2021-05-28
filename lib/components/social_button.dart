import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  SocialButton({@required this.title, @required this.icon});

  final String icon, title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            side: BorderSide(
          width: 2.0,
          color: Color(0xFF223F7D),
        )),
        child: Row(
          children: [
            Image(
              image: AssetImage('images/$icon'),
            ),
            SizedBox(
              width: 25.0,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18.0, color: Color(0xFF223F7D)),
            ),
          ],
        ));
  }
}
