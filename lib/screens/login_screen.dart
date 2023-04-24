import 'package:flutter/material.dart';
import 'package:pos_cevicheria/widget/widget.dart';
import 'package:pos_cevicheria/ui/input_decoration.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
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
                const SizedBox(
                  height: 10,
                ),
                _loginForm()
              ],
            ),
          ),
          Text("Yeveloper© 2023")
        ],
      ),
    )));
  }
}

class _loginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(
        children: [
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: 'ejemplo@correo.com',
                labelText: 'Correo: ',
                prefixIcon: Icons.person_outline_sharp),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecorations.authInputDecoration(
                hintText: '', labelText: 'Contraseña: ', prefixIcon: Icons.key),
          ),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppTheme.primary,
              elevation: 0,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: AppTheme.tertiary),
                  )),
              onPressed: () {})
        ],
      )),
    );
  }
}
