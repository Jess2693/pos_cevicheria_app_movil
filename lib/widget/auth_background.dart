import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});
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
          _HeaderIcon(),
          child
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(top: 270),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            color: Colors.white,
            size: 50,
          ),
          //Text("INGRESO",
          //   style: TextStyle(fontSize: 25, color: AppTheme.tertiary))
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
      height: size.height * 0.6,
      //color: AppTheme.primary,
      decoration: const BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.only(
          //topLeft: Radius.circular(100),
          topRight: Radius.circular(10),
          //bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(180),
        ),
      ),
    );
  }
}
