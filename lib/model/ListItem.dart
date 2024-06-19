class ListItem {
  final String imagePath;
  final String text;
  final String ballText;

  ListItem({required this.imagePath, required this.text, required this.ballText});

  factory ListItem.fromJson(Map<String, dynamic> json) {
    return ListItem(
      imagePath: json['imagePath'],
      text: json['text'],
      ballText: json['ballText'],
    );
  }

}