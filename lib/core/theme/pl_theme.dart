import 'package:flutter/material.dart';
import 'package:product_lifespan/core/theme/pl_text_theme.dart';
import 'pl_colors.dart'; // Import the color constants

class PlTheme {
  static ThemeData get theme {
    return ThemeData(
      // Primary color (used for AppBar and Buttons)
      primaryColor: PlColors.primaryColor,
      appBarTheme: const AppBarTheme(
        color: PlColors.primaryColor,
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
      ),

      // Button theme
      buttonTheme: const ButtonThemeData(
        buttonColor: PlColors.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),

      // Scaffold background color
      scaffoldBackgroundColor: PlColors.backgroundColor,

      // Input decoration theme for TextFormFields (borders, hints)
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: PlColors.secundaryColor,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: PlColors.secundaryColor,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: PlColors.focusedColor,
            width: 1.5,
          ),
        ),
        hintStyle: const TextStyle(color: Colors.black45),
      ),

      // Default text theme
      textTheme: PlTextTheme.textTheme,

      // Visual Density
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
