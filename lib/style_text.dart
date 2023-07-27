import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.name, {super.key});

  final String name;

  @override
  Widget build(context) {
    return Text(
      name,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 28,
      ),
    );
  }
}
