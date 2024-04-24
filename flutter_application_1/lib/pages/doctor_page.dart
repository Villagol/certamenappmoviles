import 'package:flutter/material.dart';

@override
class DoctorPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('The Doctor'),
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
                'assets/images/doctor2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'The Doctor',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
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
            '-The Doctor opera en una clínica clandestina ubicada en la parte trasera de una lavandería en la ciudad de Nueva York.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 20),
          Text(
            'Servicio:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'The Doctor ofrece servicios médicos y quirúrgicos discretos para la comunidad criminal. Él trata a heridos y se encarga de extraer balas y otros objetos extraños de sus pacientes sin hacer preguntas incómodas.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 10),
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
            'A pesar de ser parte del mundo criminal, The Doctor sigue un código ético y profesional en su trabajo. Se asegura de mantener la confidencialidad de sus pacientes y ofrece sus servicios sin juzgar.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
