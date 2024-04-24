import 'package:flutter/material.dart';

@override
class SommelierPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Sommelier'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey,
            Colors.white,
          ],
        )),
        child: ListView(
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
                  'assets/images/sommelier2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'The Sommelier',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'El Sommelier es un servicio exclusivo ofrecido por The Continental.',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Ubicaciones:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- The Continental: Nueva York',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              '- The Continental: Casablanca',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              '- The Continental: Roma',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Principales armas y códigos:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'El Sommelier proporciona una amplia variedad de armas de fuego, cuchillos y otros artefactos mortales, adaptados a las necesidades y preferencias de los clientes. Algunos de los códigos utilizados para solicitar armas son:',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              '- "Chianti" para un arma corta',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              '- "Merlot" para un arma larga',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              '- "Barolo" para munición',
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
              'El Sommelier ofrece sus servicios con absoluta discreción y profesionalismo. Se espera que los clientes cumplan con las reglas y códigos de conducta de The Continental para mantener la paz y la neutralidad del lugar.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
