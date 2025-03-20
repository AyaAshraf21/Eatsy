import 'package:flutter/cupertino.dart';

class WavyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.15, size.height * 0.8,
        size.width * 0.5, size.height * 0.86);
    path.quadraticBezierTo(
        size.width * 0.97, size.height * 0.92, size.width, size.height * 0.5);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
