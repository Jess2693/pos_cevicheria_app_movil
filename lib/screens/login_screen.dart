import 'package:flutter/material.dart';
import 'package:pos_cevicheria/widget/widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: Column(
      children: [
        const SizedBox(
          height: 310,
        ),
        CardContainer(
          child: Column(
            children: [
              Text(
                "INGRESO",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    )));
  }
}
