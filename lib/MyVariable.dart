import 'model/ListItem.dart';

class MyVariable {
  static final MyVariable _singleton = MyVariable._internal();

  factory MyVariable() {
    return _singleton;
  }

  MyVariable._internal();

  List<ListItem> ballItems = [
    ListItem(imagePath: 'assets/ball_1.png', text: '100', ballText: "А"),
    ListItem(imagePath: 'assets/ball_1.png', text: '80', ballText: "Е"),
    ListItem(imagePath: 'assets/ball_1.png', text: '10', ballText: "В"),
    ListItem(imagePath: 'assets/ball_1.png', text: '50', ballText: "А"),
    ListItem(imagePath: 'assets/ball_1.png', text: '20', ballText: "П"),
    ListItem(imagePath: 'assets/ball_1.png', text: '70', ballText: "Ф"),
    ListItem(imagePath: 'assets/ball_1.png', text: '87', ballText: "И"),
    ListItem(imagePath: 'assets/ball_1.png', text: '563', ballText: "Й"),
    ListItem(imagePath: 'assets/ball_1.png', text: '255', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '245', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '252', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '215', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '258', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '285', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '295', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '245', ballText: "Т"),
    ListItem(imagePath: 'assets/ball_1.png', text: '62', ballText: "Ы"),
    ListItem(imagePath: 'assets/ball_1.png', text: '626', ballText: "Ь"),
    ListItem(imagePath: 'assets/ball_1.png', text: '563', ballText: "П"),
    ListItem(imagePath: 'assets/ball_1.png', text: '423', ballText: "О"),
    ListItem(imagePath: 'assets/ball_1.png', text: '85', ballText: "Н"),
    ListItem(imagePath: 'assets/ball_1.png', text: '277', ballText: "Д"),
    ListItem(imagePath: 'assets/ball_1.png', text: '236', ballText: "Х"),
    ListItem(imagePath: 'assets/ball_1.png', text: '177', ballText: "Э"),
    ListItem(imagePath: 'assets/ball_1.png', text: '366', ballText: "О"),
    ListItem(imagePath: 'assets/ball_1.png', text: '844', ballText: "Ю"),
    ListItem(imagePath: 'assets/ball_1.png', text: '344', ballText: "Ч"),
  ];

  List<ListItem> armbandItems = [
    ListItem(imagePath: 'assets/armband.png', text: '100', ballText: "А"),
    ListItem(imagePath: 'assets/armband.png', text: '80', ballText: "Е"),
    ListItem(imagePath: 'assets/armband.png', text: '10', ballText: "В"),
    ListItem(imagePath: 'assets/armband.png', text: '50', ballText: "А"),
    ListItem(imagePath: 'assets/armband.png', text: '20', ballText: "П"),
    ListItem(imagePath: 'assets/armband.png', text: '70', ballText: "Ф"),
    ListItem(imagePath: 'assets/armband.png', text: '87', ballText: "И"),
    ListItem(imagePath: 'assets/armband.png', text: '53', ballText: "Й"),
    ListItem(imagePath: 'assets/armband.png', text: '25', ballText: "Т"),
    ListItem(imagePath: 'assets/armband.png', text: '62', ballText: "Ы"),
    ListItem(imagePath: 'assets/armband.png', text: '626', ballText: "Ь"),
    ListItem(imagePath: 'assets/armband.png', text: '563', ballText: "П"),
    ListItem(imagePath: 'assets/armband.png', text: '423', ballText: "О"),
    ListItem(imagePath: 'assets/armband.png', text: '85', ballText: "Н"),
    ListItem(imagePath: 'assets/armband.png', text: '277', ballText: "Д"),
    ListItem(imagePath: 'assets/armband.png', text: '236', ballText: "Х"),
    ListItem(imagePath: 'assets/armband.png', text: '177', ballText: "Э"),
    ListItem(imagePath: 'assets/armband.png', text: '137', ballText: "Э"),
    ListItem(imagePath: 'assets/armband.png', text: '366', ballText: "О"),
    ListItem(imagePath: 'assets/armband.png', text: '844', ballText: "Ю"),
    ListItem(imagePath: 'assets/armband.png', text: '344', ballText: "Ч"),
  ];

  List<ListItem> braceletItems = [
    ListItem(imagePath: 'assets/bracelet.png', text: '100', ballText: "А"),
    ListItem(imagePath: 'assets/bracelet.png', text: '80', ballText: "Е"),
    ListItem(imagePath: 'assets/bracelet.png', text: '10', ballText: "В"),
    ListItem(imagePath: 'assets/bracelet.png', text: '50', ballText: "А"),
    ListItem(imagePath: 'assets/bracelet.png', text: '20', ballText: "П"),
    ListItem(imagePath: 'assets/bracelet.png', text: '70', ballText: "Ф"),
    ListItem(imagePath: 'assets/bracelet.png', text: '87', ballText: "И"),
    ListItem(imagePath: 'assets/bracelet.png', text: '513', ballText: "Й"),
    ListItem(imagePath: 'assets/bracelet.png', text: '523', ballText: "Й"),
    ListItem(imagePath: 'assets/bracelet.png', text: '53', ballText: "Й"),
    ListItem(imagePath: 'assets/bracelet.png', text: '25', ballText: "Т"),
    ListItem(imagePath: 'assets/bracelet.pngbraceletItems', text: '62', ballText: "Ы"),
    ListItem(imagePath: 'assets/bracelet.png', text: '626', ballText: "Ь"),
    ListItem(imagePath: 'assets/bracelet.png', text: '563', ballText: "П"),
    ListItem(imagePath: 'assets/bracelet.png', text: '423', ballText: "О"),
    ListItem(imagePath: 'assets/bracelet.png', text: '85', ballText: "Н"),
    ListItem(imagePath: 'assets/bracelet.png', text: '277', ballText: "Д"),
    ListItem(imagePath: 'assets/bracelet.png', text: '236', ballText: "Х"),
    ListItem(imagePath: 'assets/bracelet.png', text: '216', ballText: "Х"),
    ListItem(imagePath: 'assets/bracelet.png', text: '177', ballText: "Э"),
    ListItem(imagePath: 'assets/bracelet.png', text: '366', ballText: "О"),
    ListItem(imagePath: 'assets/bracelet.png', text: '844', ballText: "Ю"),
    ListItem(imagePath: 'assets/bracelet.png', text: '344', ballText: "Ч"),
  ];

  List<ListItem> glovesItems = [
    ListItem(imagePath: 'assets/gloves.png', text: '100', ballText: "А"),
    ListItem(imagePath: 'assets/gloves.png', text: '80', ballText: "Е"),
    ListItem(imagePath: 'assets/gloves.png', text: '10', ballText: "В"),
    ListItem(imagePath: 'assets/gloves.png', text: '50', ballText: "А"),
    ListItem(imagePath: 'assets/gloves.png', text: '20', ballText: "П"),
    ListItem(imagePath: 'assets/gloves.png', text: '70', ballText: "Ф"),
    ListItem(imagePath: 'assets/gloves.png', text: '87', ballText: "И"),
    ListItem(imagePath: 'assets/gloves.png', text: '53', ballText: "Й"),
    ListItem(imagePath: 'assets/gloves.png', text: '25', ballText: "Т"),
    ListItem(imagePath: 'assets/gloves.png', text: '62', ballText: "Ы"),
    ListItem(imagePath: 'assets/gloves.png', text: '626', ballText: "Ь"),
    ListItem(imagePath: 'assets/gloves.png', text: '563', ballText: "П"),
    ListItem(imagePath: 'assets/gloves.png', text: '423', ballText: "О"),
    ListItem(imagePath: 'assets/gloves.png', text: '85', ballText: "Н"),
    ListItem(imagePath: 'assets/gloves.png', text: '277', ballText: "Д"),
    ListItem(imagePath: 'assets/gloves.png', text: '236', ballText: "Х"),
    ListItem(imagePath: 'assets/gloves.png', text: '177', ballText: "Э"),
    ListItem(imagePath: 'assets/gloves.png', text: '577', ballText: "Э"),
    ListItem(imagePath: 'assets/gloves.png', text: '477', ballText: "Э"),
    ListItem(imagePath: 'assets/gloves.png', text: '137', ballText: "Э"),
    ListItem(imagePath: 'assets/gloves.png', text: '366', ballText: "О"),
    ListItem(imagePath: 'assets/gloves.png', text: '844', ballText: "Ю"),
    ListItem(imagePath: 'assets/gloves.png', text: '844', ballText: "Ю"),
    ListItem(imagePath: 'assets/gloves.png', text: '344', ballText: "Ч"),
  ];
  List<ListItem> vestItems = [
    ListItem(imagePath: 'assets/vest.png', text: '100', ballText: "А"),
    ListItem(imagePath: 'assets/vest.png', text: '80', ballText: "Е"),
    ListItem(imagePath: 'assets/vest.png', text: '10', ballText: "В"),
    ListItem(imagePath: 'assets/vest.png', text: '50', ballText: "А"),
    ListItem(imagePath: 'assets/vest.png', text: '20', ballText: "П"),
    ListItem(imagePath: 'assets/vest.png', text: '70', ballText: "Ф"),
    ListItem(imagePath: 'assets/vest.png', text: '87', ballText: "И"),
    ListItem(imagePath: 'assets/vest.png', text: '53', ballText: "Й"),
    ListItem(imagePath: 'assets/vest.png', text: '25', ballText: "Т"),
    ListItem(imagePath: 'assets/vest.png', text: '62', ballText: "Ы"),
    ListItem(imagePath: 'assets/vest.png', text: '626', ballText: "Ь"),
    ListItem(imagePath: 'assets/vest.png', text: '563', ballText: "П"),
    ListItem(imagePath: 'assets/vest.png', text: '423', ballText: "О"),
    ListItem(imagePath: 'assets/vest.png', text: '85', ballText: "Н"),
    ListItem(imagePath: 'assets/vest.png', text: '277', ballText: "Д"),
    ListItem(imagePath: 'assets/vest.png', text: '277', ballText: "Д"),
    ListItem(imagePath: 'assets/vest.png', text: '236', ballText: "Х"),
    ListItem(imagePath: 'assets/vest.png', text: '236', ballText: "Х"),
    ListItem(imagePath: 'assets/vest.png', text: '177', ballText: "Э"),
    ListItem(imagePath: 'assets/vest.png', text: '366', ballText: "О"),
    ListItem(imagePath: 'assets/vest.png', text: '844', ballText: "Ю"),
    ListItem(imagePath: 'assets/vest.png', text: '344', ballText: "Ч"),
  ];

  List<ListItem> displayedItems = [];

  int myValue = 1;
  String gender = "male";
}
