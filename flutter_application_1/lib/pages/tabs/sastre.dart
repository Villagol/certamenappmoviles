import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sastre_page.dart';

class Sastre extends StatelessWidget {
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
              Image.asset('assets/images/sastre.jpg'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  '"The Tailor es un servicio continental que proporciona a los clientes su guardarropa."',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(1)),
                onPressed: () {
                  MaterialPageRoute rutaSastrePage =
                      MaterialPageRoute(builder: (context) {
                    return SastrePage();
                  });
                  Navigator.push(context, rutaSastrePage);
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
