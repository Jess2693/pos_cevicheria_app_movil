import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppTheme.primary)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppTheme.primary, width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: AppTheme.primary),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppTheme.primary,
              )
            : null);
  }
}
