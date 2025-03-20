import 'package:flutter/material.dart';

/// Primary Colors
const Color primaryColor = Color(0xFFFF5722);
const Color secondaryColor = Color(0xFFFFC107);

/// Background Colors
// light mode
const Color backgroundColorLight = Color(0xFFFFFFFF);
const Color surfaceColorLight = Color(0xFFF5F5F5);
//dark mode
const Color backgroundColorDark = Color(0xFF121212);
const Color surfaceColorDark = Color(0xFF1E1E1E);

/// Text Colors
//light mode
const Color textPrimaryColorLight = Color(0xFF212121);
const Color textSecondaryColorLight = Color(0xFF757575);
//dark mode
const Color textPrimaryColorDark = Color(0xFFE0E0E0);
const Color textSecondaryColorDark = Color(0xFFB0B0B0);

/// Status Colors
//light mode
const Color successColorLight = Color(0xFF4CAF50);
const Color errorColorLight = Color(0xFFD32F2F);
//dark mode
const Color successColorDark = Color(0xFF81C784);
const Color errorColorDark = Color(0xFFE57373);

/// Gradient Colors
const LinearGradient gradientColor = LinearGradient(
  colors: [
    Color(0xFFFFC107),
    Color(0xFFFF5722),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
