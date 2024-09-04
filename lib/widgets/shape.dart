import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Image.asset(
        'assets/shape.png',
        width: 150,
        height: 150, // Makes the image fill the width
      ),
    );
  }
}
