import 'package:flutter/material.dart';

void main() {
  runApp(Column(children: const [
    Animal(text: 'mouse', color: Colors.yellow),
    Animal(text: 'lizard', color: Colors.orange),
  ]));
}

class Animal extends StatelessWidget {
  const Animal({Key? key, required this.text, required this.color})
      : super(key: key);

  final String text;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          text,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
