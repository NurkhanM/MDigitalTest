import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Bg.dart';
import '../MyVariable.dart';

class CategoryView extends StatelessWidget {
  MyVariable myVariable = MyVariable();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroudsImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Выберите Категорию',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryItem(
                  icon: 'assets/ball_1.png',
                  text: 'Мячи',
                  desc: myVariable.ballItems.length.toString(),
                  onTap: () {
                    _handleTap(context, 1);
                  },
                ),
                CategoryItem(
                  icon: 'assets/armband.png',
                  text: 'Повязка',
                  desc: myVariable.armbandItems.length.toString(),
                  onTap: () {
                    _handleTap(context, 2);
                  },
                ),
                CategoryItem(
                  icon: 'assets/bracelet.png',
                  text: 'Браслет',
                  desc:  myVariable.braceletItems.length.toString(),
                  onTap: () {
                    _handleTap(context, 3);
                  },
                ),
                CategoryItem(
                  icon: 'assets/gloves.png',
                  text: 'Перчатки',
                  desc:  myVariable.glovesItems.length.toString(),
                  onTap: () {
                    _handleTap(context, 4);
                  },
                ),
                CategoryItem(
                  icon: 'assets/vest.png',
                  text: 'Жилет',
                  desc: myVariable.vestItems.length.toString(),
                  onTap: () {
                    _handleTap(context, 5);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _handleTap(BuildContext context, int value) {
    if (value == 1) {
      Navigator.of(context).pushNamed('/homeView', arguments: value);
    } else if (value == 2) {
      Navigator.of(context).pushNamed('/homeView', arguments: value);
    } else if (value == 3) {
      Navigator.of(context).pushNamed('/homeView', arguments: value);
    } else if (value == 4) {
      Navigator.of(context).pushNamed('/homeView', arguments: value);
    } else if (value == 5) {
      Navigator.of(context).pushNamed('/homeView', arguments: value);
    }
  }
}

class CategoryItem extends StatelessWidget {
  final String icon;
  final String text;
  final String desc;
  final VoidCallback onTap;

  const CategoryItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.desc,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 100,
        height: 200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(icon),
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
