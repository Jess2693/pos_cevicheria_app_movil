import 'package:flutter/material.dart';
import 'package:pos_cevicheria/providers/login_form_proveider.dart';
import 'package:pos_cevicheria/widget/widget.dart';
import 'package:pos_cevicheria/ui/input_decoration.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';
import 'package:provider/provider.dart';

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
                ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: _loginForm(),
                ),
              ],
            ),
          ),
          const Text("Yeveloper© 2023")
        ],
      ),
    )));
  }
}

class _loginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
          key: loginForm.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'ejemplo@correo.com',
                    labelText: 'Correo: ',
                    prefixIcon: Icons.person_outline_sharp),
                onChanged: (value) => loginForm.email = value,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);
                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'Correo incorrecto';
                },
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecorations.authInputDecoration(
                    hintText: '*****',
                    labelText: 'Contraseña: ',
                    prefixIcon: Icons.key),
                onChanged: (value) => loginForm.password = value,
                validator: (value) {
                  return (value != null && value.length >= 8)
                      ? null
                      : "Contraseña incorrecta";
                },
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(color: AppTheme.tertiary),
                      )),
                  onPressed: () {
                    if (!loginForm.isValidForm()) return;
                    Navigator.pushReplacementNamed(context, 'home');
                  })
            ],
          )),
    );
  }
}
