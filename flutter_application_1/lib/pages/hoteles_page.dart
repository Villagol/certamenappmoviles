import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/hoteles_card.dart';
import 'package:flutter_application_1/widgets/menuburger.dart';

class HotelesPage extends StatelessWidget {
  const HotelesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoteles'),
      ),
      drawer: MenuBurger(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey,
              Colors.white,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HotelesCard(
                imagen: 'assets/images/hotelny.jpg',
                nombre: 'Continental New York',
                ubicacion: 'New York, USA',
              ),
              HotelesCard(
                imagen: 'assets/images/hotelroma.jpg',
                nombre: 'Continental Roma',
                ubicacion: 'Roma, Italy',
              ),
              HotelesCard(
                imagen: 'assets/images/hotelcb.jpg',
                nombre: 'Continental Casablanca',
                ubicacion: 'Casablanca, Morocco',
              ),
              HotelesCard(
                imagen: 'assets/images/hotelosaka.jpg',
                nombre: 'Continental Osaka',
                ubicacion: 'Osaka, Japan',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
