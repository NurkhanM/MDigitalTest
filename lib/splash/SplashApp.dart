import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mdigitaltest/category/CategoryView.dart';


class SplashApp extends StatefulWidget {
  const SplashApp({super.key});

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      // print("Remote Config data: ${remoteConfig.getAll()}");

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => CategoryView()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage("assets/img_mbank.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
