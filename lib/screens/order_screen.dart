import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, color: AppTheme.primary),
        ),
        backgroundColor: AppTheme.tertiary,
        title: const Text(
          "Nueva orden",
          style: TextStyle(color: AppTheme.primary),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.payments_outlined, color: AppTheme.primary),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.save_outlined, color: AppTheme.primary),
          )
        ],
      ),
    );
  }
}
