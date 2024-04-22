import 'package:flutter/material.dart';

class ContratosCard extends StatelessWidget {
  final String foto;
  final String nombre;
  final String texto;
  final String recompensa;
  final String fechaLimite;
  final String motivo;

  ContratosCard({
    required this.foto,
    required this.nombre,
    required this.texto,
    required this.recompensa,
    required this.fechaLimite,
    required this.motivo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(nombre),
            subtitle: Text(texto),
            leading: CircleAvatar(
              backgroundImage: AssetImage(foto),
            ),
          ),
          ExpansionTile(
            title: Text('Ver más', style: TextStyle(fontSize: 15)),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text("Recompensa: $recompensa"),
                    Text("Fecha límite: $fechaLimite"),
                    Text("Motivo: $motivo")
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
