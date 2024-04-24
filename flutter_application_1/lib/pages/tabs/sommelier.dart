import 'package:flutter/material.dart';

class Sommelier extends StatelessWidget {
  const Sommelier({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/sommelier.jpg'),
            Text(
              '"El Sommelier es un servicio que se presta en The Continental, suministra y sugiere armas de fuego y municiones"',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ));
  }
}
