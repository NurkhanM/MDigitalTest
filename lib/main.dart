import 'package:flutter/material.dart';
import 'package:mdigitaltest/ball/InfoBallView.dart';
import 'package:mdigitaltest/splash/SplashApp.dart';

import 'category/CategoryView.dart';
import 'home/HomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SplashApp(),
        '/homeView': (context) => HomeView(),
        '/infoBallView': (context) => const InfoBallView(),
        '/сategoryView': (context) => CategoryView(),
      },
    );
  }
}