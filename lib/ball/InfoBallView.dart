
import 'package:flutter/material.dart';

import '../Bg.dart';
import '../model/ListItem.dart';

class InfoBallView extends StatefulWidget {
  const InfoBallView({super.key});

  @override
  State<InfoBallView> createState() => _InfoBallViewState();
}

class _InfoBallViewState extends State<InfoBallView> {
  ListItem? argsName;
  bool _isVisible = false;
  bool _isExpanded = false;
  double widthBox = 200;
  double heightBox = 200;
  double widthBox2 = 20;
  double heightBox2 = 20;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null || args is! ListItem) {
      print("is Null");
      return;
    }
    setState(() {
      argsName = args;
    });
  }

  void _expandBox() {
    setState(() {
      if (_isExpanded) {
        widthBox = 50;
        heightBox = 50;
        widthBox2 = 400;
        heightBox2 = 400;
      } else {
        widthBox = 200;
        heightBox = 200;
        widthBox2 = 20;
        heightBox2 = 20;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroudsImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  width: widthBox,
                  height: heightBox,
                  child: Image(
                    image: AssetImage(argsName?.imagePath ?? ""),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  width: widthBox2,
                  height: heightBox2,
                  onEnd: () {
                    if (!_isExpanded) {
                      setState(() => _isVisible = false);
                    }
                  },
                  child: Visibility(
                    visible: _isVisible,
                    child: const Image(
                      image: AssetImage("assets/img.png"),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                        _isVisible = true;
                      });
                      _expandBox();
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      "${argsName!.text} BUY",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
