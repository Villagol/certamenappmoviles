import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/afiliaciones_page.dart';
import 'package:flutter_application_1/pages/contratos_page.dart';
import 'package:flutter_application_1/pages/home_inicio.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/hoteles_page.dart';
import 'package:flutter_application_1/pages/servicios_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            ListTile(
              title: Text('Inicio'),
              leading: Icon(
                MdiIcons.home,
                color: Colors.black,
              ),
              onTap: () {
                print('Inicio seleccionado');
                MaterialPageRoute rutaHomeInicioPage =
                    MaterialPageRoute(builder: (context) {
                  return HomeInicio();
                });
                Navigator.push(context, rutaHomeInicioPage);
              },
            ),
            Divider(),
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
            ListTile(
              title: Text('Cerrar Sesión'),
              leading: Icon(Icons.logout, color: Colors.black),
              onTap: () {
                MaterialPageRoute rutaHomePage = MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                );

                Navigator.push(context, rutaHomePage);
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.grey],
        )),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/zachir.jpg'),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text('Nombre: '),
                subtitle: Text('Kristhobal Riquelme'),
                leading: Icon(MdiIcons.head),
              ),
              ListTile(
                title: Text('Edad: '),
                subtitle: Text('21 años'),
                leading: Icon(MdiIcons.formatListNumbered),
              ),
              ListTile(
                title: Text('Nacionalidad: '),
                subtitle: Text('Chileno'),
                leading: Icon(MdiIcons.flag),
              ),
              ListTile(
                title: Text('Ciudad de residencia: '),
                subtitle: Text('Tokio'),
                leading: Icon(MdiIcons.city),
              ),
              ListTile(
                title: Text('Cantidad de asesinatos '),
                subtitle: Text('89'),
                leading: Icon(MdiIcons.pistol),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
