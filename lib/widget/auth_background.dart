import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class AuthBackground extends StatelessWidget {
  //const AuthBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.secondary,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _FirstBox(),
          SafeArea(
              child: Center(
                  child: Image.asset('assets/logo.png'), heightFactor: 1.3)),
        ],
      ),
    );
  }
}

class _FirstBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      color: AppTheme.primary,
    );
  }
}
