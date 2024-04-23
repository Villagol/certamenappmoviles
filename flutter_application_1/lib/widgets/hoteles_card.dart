import 'package:flutter/material.dart';

class HotelesCard extends StatelessWidget {
  final String imagen;
  final String nombre;
  final String ubicacion;

  HotelesCard({
    required this.imagen,
    required this.nombre,
    required this.ubicacion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
            title: Text(nombre),
            subtitle: Text(ubicacion),
            leading: Image.asset(
              imagen,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Reservar Habitación'),
                        content:
                            Text('La habitación ha sido reservada con éxito'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Aceptar'))
                        ],
                      );
                    });
              },
              child: Text('Reservar'))
        ],
      ),
    );
  }
}
