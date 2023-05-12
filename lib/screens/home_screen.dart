import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';
import 'package:pos_cevicheria/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        onPressed: () {
          Navigator.pushNamed(context, 'order');
          //Navigator.pushReplacementNamed(context, 'order');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppTheme.secondary,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              //activeIcon: Icon(Icons.list_alt_rounded),
              label: 'Pedidos',
              //backgroundColor: AppTheme.secondary
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_outlined),
              //activeIcon: Icon(Icons.restaurant),
              label: 'Productos',
              //backgroundColor: AppTheme.primary
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.table_restaurant_outlined),
              //activeIcon: Icon(Icons.access_alarms_outlined),
              label: 'Mesas',
              //backgroundColor: AppTheme.primary
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              //activeIcon: Icon(Icons.access_alarms_outlined),
              label: 'Categorias',
              //backgroundColor: AppTheme.primary
            ),
          ]),
      //bottomNavigationBar: const _BottonAppBarDesing(),
      drawer: const NavBarWidget(),
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: AppTheme.primary,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.account_circle_outlined),
          )
        ],
        //leading: const Icon(Icons.menu),
      ),
      //body: Bottom
    );
  }
}
