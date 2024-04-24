import 'package:flutter/material.dart';

@override
class SastrePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Sommelier'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/sastre2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'The Tailor',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'Es un sastre y modisto experto que ofrece sus servicios a la comunidad de asesinos y criminales. Es conocido por sus habilidades excepcionales en la confección de trajes a medida.',
            style: TextStyle(fontSize: 16, color: Colors.black),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            'Ubicación:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'The Tailor opera en un taller de sastrería clandestino ubicado en una calle lateral de la ciudad de Nueva York.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 20),
          Text(
            'Servicios:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            '- Confección de trajes a medida: Creación de prendas personalizadas que se ajustan perfectamente a las medidas y preferencias del cliente.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            '- Modificaciones y ajustes: Ajustes en prendas existentes para mejorar su ajuste y estilo según las preferencias del cliente.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            '- Personalización y detalles especiales: Adición de detalles únicos y funcionales a las prendas para mejorar su apariencia y funcionalidad, ofreciendo a los clientes una experiencia de vestuario personalizada.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 20),
          Text(
            'Importante:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'A pesar de trabajar para la comunidad criminal, The Tailor mantiene un estricto código de discreción y confidencialidad con sus clientes. Es conocido por su profesionalismo y lealtad a aquellos que lo contratan.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
