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
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(16),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imagen),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                nombre,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                ubicacion,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            trailing: Padding(
              padding: EdgeInsets.only(left: 16),
              child: ElevatedButton(
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
                            child: Text('Aceptar'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Reservar'),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
