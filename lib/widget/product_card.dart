import 'package:flutter/material.dart';
import 'package:pos_cevicheria/theme/app_theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.4,
        height: size.height * 0.4,
        decoration: _carBoxDecoration(),
        child: const Stack(
          alignment: Alignment.topLeft,
          children: [_BackgroundImage(), _ProductDetails()],
        ),
      ),
    );
  }

  BoxDecoration _carBoxDecoration() => BoxDecoration(
        color: const Color.fromARGB(255, 235, 229, 229),
        borderRadius: BorderRadius.circular(25),
      );
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 70,
      color: AppTheme.secondary,
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: size.width,
        height: size.height,
        color: Colors.red,
        child: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/400x300/f6f6f6'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
