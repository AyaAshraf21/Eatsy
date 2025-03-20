import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final bool? obscureText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const DefaultTextField({
    super.key,
    this.obscureText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Color(0xFF757575), fontSize: 14),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: Color(0xFF757575),
        suffixIconColor: Color(0xFF757575),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFF757575)),
        ),
      ),
    );
  }
}
