import 'package:flutter/material.dart';
import 'package:maw3od_app/components/social_button.dart';
import 'package:maw3od_app/screens/home_page.dart';

import '../constants.dart';

class LoginPage extends StatefulWidget {
  static final String id = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Image(
                      image: AssetImage('images/login_image.png'),
                    ),
                  ),
                  //email input
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Email',
                    textAlign: TextAlign.start,
                    style: kTextAboveTextFieldStyle,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Email',
                      prefixIcon: Image(
                        image: AssetImage(
                          'images/email_icon.png',
                        ),
                      ),
                    ),
                  ),
                  //password field
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Password',
                    textAlign: TextAlign.start,
                    style: kTextAboveTextFieldStyle,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    obscureText: _secure,
                    onChanged: (value) {},
                    decoration: kTextFieldDecoration.copyWith(
                      contentPadding: EdgeInsets.only(bottom: 30.0),
                      suffixIcon: TextButton(
                        onPressed: () {
                          setState(() => _secure = !_secure);
                        },
                        child: Text(
                          _secure ? 'Show' : 'Hide',
                          style: kSuffixTextStyle,
                        ),
                      ),
                      hintText: 'Password',
                      prefixIcon: Image(
                        image: AssetImage(
                          'images/password_icon.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  // forgotten & login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Forgt Passowrd?',
                          style: kSuffixTextStyle,
                        ),
                      ),
                      Material(
                        elevation: 10.0,
                        color: Color(0xFF503EFF),
                        borderRadius: BorderRadius.circular(5.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, HomePage.id);
                          },
                          // minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  //facebook & google
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialButton(title: 'Facebook', icon: 'face.png'),
                      SocialButton(title: 'Google', icon: 'google.png'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
