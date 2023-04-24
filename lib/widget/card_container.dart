import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        decoration: _createCardDecoration(),
        padding: const EdgeInsets.all(17),
        child: child,
      ),
    );
  }

  BoxDecoration _createCardDecoration() => BoxDecoration(
        color: AppTheme.tertiary,
        borderRadius: BorderRadius.circular(20),
      );
}
