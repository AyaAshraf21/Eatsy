import 'package:flutter/cupertino.dart';

class CircleBackground extends StatelessWidget {
  final Image? image;
  final double width;
  final double height;
  final Color? color;
  final LinearGradient? gradientColor;
  final String? imagePath;
  final double? assetWidth;
  final double? assetHeight;

  const CircleBackground({
    super.key,
    required this.width,
    required this.height,
    this.image,
    this.color,
    this.gradientColor,
    this.imagePath,
    this.assetWidth,
    this.assetHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        gradient: gradientColor,
      ),
      child: Center(
        child: image ??
            (imagePath != null
                ? Image.asset(imagePath!,
                    width: assetWidth, height: assetHeight)
                : null),
      ),
    );
  }
}
