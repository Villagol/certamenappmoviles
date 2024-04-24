import 'package:flutter/material.dart';

class Clanasesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Card(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/clan.jpg'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Los clanes asesinos son grupos organizados de asesinos con sus propias tradiciones, reglas y estructuras internas. Cada clan puede tener un enfoque particular en cuanto a sus métodos de asesinato y especialidades. Algunos ejemplos de clanes incluyen el clan ruso liderado por Viggo Tarasov y el clan italiano liderado por Santino D Antonio.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
