import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: AppTheme.primary,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.account_circle_outlined),
          )
        ],
        leading: const Icon(Icons.menu),
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
