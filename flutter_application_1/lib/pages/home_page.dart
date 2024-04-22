import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_inicio.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.grey,
            Colors.black,
          ],
        )),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              Image.asset(
                'assets/images/ImagenInicio.jpg',
                width: 300,
                height: 300,
              ),
              Text(
                'Inicio de sesión',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Divider(),
              Container(
                  child: TextField(
                decoration: InputDecoration(labelText: 'Usuario'),
              )),
              Container(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Contraseña'),
                ),
              ),
              Center(
                child: Container(
                    alignment: Alignment.bottomLeft,
                    child: ButtonBar(
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            print('Botón 1 presionado');
                            MaterialPageRoute rutaHomeInicio =
                                new MaterialPageRoute(builder: (context) {
                              return HomeInicio();
                            });
                            Navigator.push(context, rutaHomeInicio);
                          },
                          child: Text(
                            'Iniciar',
                            style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                height: 3,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
