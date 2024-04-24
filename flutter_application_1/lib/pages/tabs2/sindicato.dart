import 'package:flutter/material.dart';

class Sindicato extends StatelessWidget {
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
              Image.asset('assets/images/sindi.jpg'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Es una organización criminal global compuesta por asesinos a sueldo, mercenarios y otros criminales de élite. Este sindicato opera bajo la dirección de la Alta Mesa y facilita contratos de asesinato, proporciona recursos logísticos y mantiene una red de información sobre objetivos y clientes potenciales.',
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
