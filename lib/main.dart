import 'package:flutter/material.dart';
import 'package:maw3od_app/screens/home_page.dart';
import 'package:maw3od_app/screens/login_page.dart';
import 'package:maw3od_app/screens/videoes_page.dart';

void main() {
  runApp(Maw3od());
}

class Maw3od extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        HomePage.id: (context) => HomePage(),
        VideoesPage.id: (context) => VideoesPage(),
      },
      title: 'موعود',
    );
  }
}
