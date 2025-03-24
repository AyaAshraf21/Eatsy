import 'package:flutter/material.dart';

import '../themes/app_color.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function? onPressed;
  const DefaultButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), gradient: gradientColor),
        width: double.infinity,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              onPressed!();
            },
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
