import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.blue[40],
        enabledBorder: OutlineInputBorder(
            //enabledBorder: const UnderlineInputBorder(
            borderSide: const BorderSide(color: AppTheme.tertiary),
            borderRadius: BorderRadius.circular(25)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppTheme.secondary),
          borderRadius: BorderRadius.circular(25.0),
        ),

        //borderSide: BorderSide(color: AppTheme.primary, width: 2)),
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
