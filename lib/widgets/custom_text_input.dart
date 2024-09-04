import 'package:flutter/material.dart';
import 'package:todolist/utils/colors.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController
      controller; // Controller for managing the text field
  final bool obscureText; // To hide or show text

  const CustomTextInput({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    this.obscureText = false, // Default is false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        decoration: const BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            spreadRadius: 3,
            offset: Offset(0, 3),
          ),
        ]),
        child: TextField(
          controller: controller, // Use the controller here
          obscureText: obscureText, // Hide text if true
          decoration: InputDecoration(
            fillColor: Colors.white,
            prefixIcon: Icon(icon),
            hintText: hintText,
            border: UnderlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
