import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weather_app/screens/loading_screen.dart';

const bool kReleaseMode = bool.fromEnvironment('dart.vm.product', defaultValue: false);

void main() {
    FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
 return  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
