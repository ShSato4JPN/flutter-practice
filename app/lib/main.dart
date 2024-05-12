import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const Center(
    child: Counter(),
  ));
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _increment();
      },
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        child: Center(
          child: Text('$_count', textDirection: TextDirection.ltr),
        ),
      ),
    );
  }
}
