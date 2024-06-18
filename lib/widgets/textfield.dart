import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final String label;

  const BuildTextField({
    this.obscureText = false,
    required this.controller,
    required this.hintText,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}
