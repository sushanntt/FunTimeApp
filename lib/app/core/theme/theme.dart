import 'package:flutter/material.dart';

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme blueColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF2196F3), // Blue color for primary
      surfaceTint: Color(0xFF2196F3), // Blue color for surface tint
      onPrimary: Color(0xFFFFFFFF), // White text on primary
      primaryContainer: Color(0xFFBBDEFB), // Light blue for primary container
      onPrimaryContainer: Color(0xFF0D47A1), // Dark blue on container
      secondary: Color(0xFF03A9F4), // Light blue for secondary
      onSecondary: Color(0xFFFFFFFF), // White text on secondary
      secondaryContainer:
          Color(0xFF81D4FA), // Light blue for secondary container
      onSecondaryContainer: Color(0xFF0288D1), // Dark blue on container
      error: Color(0xFFD32F2F), // Red error color
      onError: Color(0xFFFFFFFF), // White text on error
      errorContainer: Color(0xFFFFCDD2), // Light red for error container
      onErrorContainer: Color(0xFFB71C1C), // Dark red on error container
      surface: Color(0xFFFFFFFF), // White surface
      onSurface: Color(0xFF212121), // Dark text on surface
      outline: Color(0xFFB0BEC5), // Outline color
      shadow: Color(0xFF000000), // Shadow color
      scrim: Color(0xFF000000), // Scrim color
      inverseSurface: Color(0xFF212121), // Inverse surface color
      inversePrimary: Color(0xFFBBDEFB), // Light blue inverse primary
    );
  }

  ThemeData light() {
    return theme(blueColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );
}
