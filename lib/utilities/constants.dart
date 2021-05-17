import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 90.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 90.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white70,
  icon: Icon(Icons.location_city, color: Colors.white),
  hintText: 'Enter city name',
  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  )),
);