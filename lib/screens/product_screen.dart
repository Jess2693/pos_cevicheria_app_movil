import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos_cevicheria/ui/input_decoration.dart';

import '../theme/app_theme.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Producto'),
          backgroundColor: AppTheme.primary,
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.account_circle_outlined),
            )
          ],
          leading: const Icon(Icons.arrow_back_ios_new),
        ),
        body: _productForm());
  }
}

class _productForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Form(
            child: Column(
          children: [
            Text(
              "Datos",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: InputDecorations.authInputDecoration(
                  hintText: "Nombre",
                  labelText: "Producto",
                  prefixIcon: Icons.edit),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              }).toList(),
              onChanged: null,
              decoration: InputDecorations.authInputDecoration(
                  hintText: "Categoria",
                  labelText: "Categoria",
                  prefixIcon: Icons.select_all_outlined),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: InputDecorations.authInputDecoration(
                  hintText: "Descripción",
                  labelText: "Descripción",
                  prefixIcon: Icons.abc),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
              ],
              autocorrect: false,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecorations.authInputDecoration(
                  hintText: "Precio",
                  labelText: "Valor",
                  prefixIcon: Icons.monetization_on_outlined),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.photo_size_select_actual_outlined,
                        size: 40,
                      )),
                  SizedBox(
                      width: 100,
                      child: Container(
                        color: AppTheme.secondary,
                      )),
                  const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        size: 40,
                      ))
                ]),
                Card(
                    color: AppTheme.tertiary,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          height: size.height * 0.3,
                          width: size.width * 0.6,
                        ))),
              ],
            )
          ],
        )),
      ),
    );
  }
}
