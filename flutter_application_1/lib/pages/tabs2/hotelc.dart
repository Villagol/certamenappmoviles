import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/hoteles_page.dart';

class Hotelc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HotelesPage()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Card(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/hoteles.jpg'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Es una red de hoteles exclusivos que sirven como refugio seguro para asesinos y criminales de alto perfil. Estos hoteles están dirigidos por el Gerente, quien hace cumplir las estrictas reglas que prohíben la violencia dentro de sus instalaciones. Los miembros del Hotel Continental tienen acceso a servicios y recursos especiales, como suministros de armas y asistencia médica.',
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
