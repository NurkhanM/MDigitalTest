import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget backgroudsImage() {
  return ShaderMask(
    shaderCallback: (bounds) => const LinearGradient(
      colors: [Colors.black, Colors.black12],
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).createShader(bounds),
    blendMode: BlendMode.darken,
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
    ),
  );
}