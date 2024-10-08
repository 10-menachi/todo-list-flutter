import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
