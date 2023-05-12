import 'package:flutter/material.dart';

class ListProductsScreen extends StatelessWidget {
  const ListProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Productos"),
      ),
      body: ListView.builder(
          itemCount: 10, itemBuilder: (context, index) => Text('Item: $index')),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
