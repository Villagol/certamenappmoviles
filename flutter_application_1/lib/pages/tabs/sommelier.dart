import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sommelier_page.dart';

class Sommelier extends StatelessWidget {
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
              Image.asset('assets/images/sommelier.jpg'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  '"El Sommelier es un servicio que se presta en The Continental, suministra y sugiere armas de fuego y municiones"',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(1)),
                onPressed: () {
                  MaterialPageRoute rutaSommelierPage =
                      MaterialPageRoute(builder: (context) {
                    return SommelierPage();
                  });
                  Navigator.push(context, rutaSommelierPage);
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
