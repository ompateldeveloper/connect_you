import 'package:flutter/material.dart';

class StyledInput extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController? controller;

  const StyledInput({
    super.key,
    required this.hintText,
    this.icon,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon) : null,
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(8),
        // ),
      ),
    );
  }
}
