import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/afiliaciones_page.dart';
import 'package:flutter_application_1/pages/contratos_page.dart';
import 'package:flutter_application_1/pages/hoteles_page.dart';
import 'package:flutter_application_1/pages/perfil_page.dart';
import 'package:flutter_application_1/pages/servicios_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeInicio extends StatelessWidget {
  const HomeInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Perfil'),
              leading: Icon(
                MdiIcons.account,
                color: Colors.black,
              ),
              onTap: () {
                print('Perfil seleccionado');
                MaterialPageRoute rutaPerfilPage =
                    MaterialPageRoute(builder: (context) {
                  return PerfilPage();
                });
                Navigator.push(context, rutaPerfilPage);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Contratos'),
              leading: Icon(
                MdiIcons.pagePrevious,
                color: Colors.black,
              ),
              onTap: () {
                print('Contratos seleccionado');
                MaterialPageRoute rutaContratosPage =
                    MaterialPageRoute(builder: (context) {
                  return ContratosPage();
                });
                Navigator.push(context, rutaContratosPage);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Servicios'),
              leading: Icon(
                MdiIcons.email,
                color: Colors.black,
              ),
              onTap: () {
                print('Servicios seleccionado');
                MaterialPageRoute rutaServiciosPage =
                    MaterialPageRoute(builder: (context) {
                  return ServiciosPage();
                });
                Navigator.push(context, rutaServiciosPage);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Hoteles'),
              leading: Icon(
                MdiIcons.officeBuildingMarker,
                color: Colors.black,
              ),
              onTap: () {
                print('Hoteles seleccionado');
                MaterialPageRoute rutaHotelesPage =
                    MaterialPageRoute(builder: (context) {
                  return HotelesPage();
                });
                Navigator.push(context, rutaHotelesPage);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Afiliaciones'),
              leading: Icon(
                MdiIcons.accountGroup,
                color: Colors.black,
              ),
              onTap: () {
                print('Afiliaciones seleccionado');
                MaterialPageRoute rutaAfiliacionesPage =
                    MaterialPageRoute(builder: (context) {
                  return AfiliacionesPage();
                });
                Navigator.push(context, rutaAfiliacionesPage);
              },
            ),
            Divider(),
            Expanded(
              child: SizedBox(),
            ),
            ListTile(
              title: Text('Cerrar Sesiòn'),
              leading: Icon(Icons.logout, color: Colors.black),
              onTap: () {
                print('Cerrar sesiòn seleccionado');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  'Bienvenido The Adjudicator',
                  style: TextStyle(
                      fontSize: 30,
                      backgroundColor: Colors.black,
                      color: Colors.white),
                ),
              ),
              Image.asset('assets/images/fondo.jpg'),
              SizedBox(
                height: 60,
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
