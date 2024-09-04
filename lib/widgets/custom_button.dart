import 'package:flutter/material.dart';
import 'package:todolist/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        fixedSize: WidgetStateProperty.all<Size>(
          const Size(300, 50),
        ),
        backgroundColor: WidgetStateProperty.all<Color?>(
          AppColors.buttonColor,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
