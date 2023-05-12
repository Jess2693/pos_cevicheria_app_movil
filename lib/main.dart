import 'package:flutter/material.dart';
import 'package:pos_cevicheria/screens/category_screen.dart';
import 'package:pos_cevicheria/screens/list_categories_screen.dart';
import 'package:pos_cevicheria/screens/list_orders_screen.dart';
import 'package:pos_cevicheria/screens/list_tables_screen.dart';
import 'package:pos_cevicheria/screens/lists_products_screen.dart';
import 'package:pos_cevicheria/screens/order_screen.dart';
import 'package:pos_cevicheria/screens/screens.dart';
import 'package:pos_cevicheria/screens/table_screen.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pos Cevicheria",
      initialRoute: 'products',
      //initialRoute: 'login',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen(),
        'product': (_) => const ProductScreen(),
        'products': (_) => const ListProductsScreen(),
        'order': (_) => const OrderScreen(),
        'category': (_) => const CategoryScreen(),
        'orders': (_) => const ListOrdersScreen(),
        'categories': (_) => const ListCategoriesScreen(),
        'table': (_) => const TableScreen(),
        'tables': (_) => const ListTablesScreen()
      },
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0, color: AppTheme.primary),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: AppTheme.primary)),
    );
  }
}
