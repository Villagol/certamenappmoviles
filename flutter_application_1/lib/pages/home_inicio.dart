import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contratos_page.dart';
import 'package:flutter_application_1/pages/servicios_page.dart';
import 'package:flutter_application_1/widgets/menuburger.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeInicio extends StatelessWidget {
  const HomeInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MenuBurger(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.grey,
            Colors.white,
          ],
        )),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  'Bienvenid@ Asesin@',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: Colors.black),
                ),
              ),
              Image.asset(
                'assets/images/logotipo.jpg',
                width: 300,
                height: 500,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Servicios presionado');
                      MaterialPageRoute rutaServiciosPage =
                          MaterialPageRoute(builder: (context) {
                        return ServiciosPage();
                      });
                      Navigator.push(context, rutaServiciosPage);
                    },
                    child: Text(
                      'Servicios',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print('Contratos seleccionado');
                        MaterialPageRoute rutaContratosPage =
                            MaterialPageRoute(builder: (context) {
                          return ContratosPage();
                        });
                        Navigator.push(context, rutaContratosPage);
                      },
                      child: Text(
                        'Contratos',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
