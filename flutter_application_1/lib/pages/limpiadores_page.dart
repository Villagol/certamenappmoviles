import 'package:flutter/material.dart';

@override
class LimpiadoresPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('The Cleaners'),
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
          padding: EdgeInsets.all(16),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/limpiadores2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'The Cleaners',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'The Cleaners son un grupo de limpiadores altamente capacitados que se especializan en la eliminación de evidencia de escenas de crimen y la gestión de cadáveres. Operan en el mundo criminal y trabajan para eliminar cualquier rastro de los crímenes cometidos por los asesinos.',
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
              '- The Cleaners operan en secreto desde ubicaciones desconocidas, con bases de operaciones clandestinas que les permiten moverse rápidamente y realizar su trabajo de manera eficiente en todo el mundo.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Servicios: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Eliminación de evidencia: The Cleaners se encargan de limpiar las escenas de crimen, eliminando cualquier evidencia que pueda vincular a los perpetradores con el delito.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Gestión de cadáveres: Además de limpiar las escenas de crimen, The Cleaners también se encargan de gestionar los cuerpos de las víctimas, asegurándose de que no sean descubiertos y de que no queden rastros de su presencia.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Desapariciones: En algunos casos, The Cleaners pueden ayudar a hacer desaparecer a personas que representan una amenaza para la comunidad criminal, eliminando cualquier rastro de su existencia y asegurándose de que no sean encontradas.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
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
              'The Cleaners operan con un alto nivel de profesionalismo y discreción, siguiendo un estricto código de conducta para garantizar que su trabajo se realice de manera efectiva y sin levantar sospechas. Son considerados como una parte esencial del submundo criminal, proporcionando un servicio vital para mantener el secreto y la seguridad de la comunidad de asesinos.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
