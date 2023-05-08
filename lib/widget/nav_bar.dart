import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.primary,
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(8),
            children: [
              DrawerHeader(
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppTheme.primary,
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: const Text('Inicio',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {
                  //Navigator.pushNamed(context, '');
                },
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ListTile(
                leading: const Icon(
                  Icons.format_list_numbered_sharp,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: const Text('Pedidos',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {
                  //Navigator.pushNamed(context, '');
                },
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ListTile(
                leading: const Icon(
                  Icons.restaurant,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: const Text('Productos',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {
                  //Navigator.pushNamed(context, '');
                },
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ListTile(
                leading: const Icon(
                  Icons.table_restaurant_outlined,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: const Text('Mesas',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {
                  //Navigator.pushNamed(context, '');
                },
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ListTile(
                leading: const Icon(
                  Icons.category_outlined,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: const Text('Categorias',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {
                  //Navigator.pushNamed(context, '');
                },
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ListTile(
                leading: const Icon(
                  Icons.output_rounded,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: const Text('Salir',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {
                  //Navigator.pushNamed(context, '');
                },
              ),

              // ignore: avoid_unnecessary_containers
            ],
          ),
        ],
      ),
    );
  }
}
