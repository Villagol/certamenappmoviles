import 'package:flutter/material.dart';

class ServiciosCard extends StatelessWidget {
  final String imagen;
  final String texto;

  ServiciosCard({
    required this.imagen,
    required this.texto,
  });

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
              Image.asset(imagen),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  texto,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // Aquí puedes añadir la navegación o la acción que desees
                },
                child: Text(
                  'Contactar',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
