import 'package:flutter/material.dart';

const kDarkGreyColor = Color(0xFF140F46);
const klightkGreyColor = Color(0xFFE5E5E5);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(color: kDarkGreyColor, width: 4.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kDarkGreyColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kDarkGreyColor, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);

const kTextAboveTextFieldStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
  color: kDarkGreyColor,
);

const kSuffixTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w300,
  color: kDarkGreyColor,
);

const kTextStyleHomeSplitter = TextStyle(
  fontSize: 18.0,
);
