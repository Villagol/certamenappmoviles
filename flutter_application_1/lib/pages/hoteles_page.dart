import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/afiliaciones_page.dart';
import 'package:flutter_application_1/pages/contratos_page.dart';
import 'package:flutter_application_1/pages/home_inicio.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/perfil_page.dart';
import 'package:flutter_application_1/pages/servicios_page.dart';
import 'package:flutter_application_1/widgets/hoteles_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HotelesPage extends StatelessWidget {
  const HotelesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoteles'),
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
          colors: [
            Colors.grey,
            Colors.white,
          ],
        )),
        child: Column(
          children: [
            HotelesCard(
                imagen: 'assets/images/hotelny.jpg',
                nombre: 'Continental New York',
                ubicacion: 'New York, USA'),
            HotelesCard(
                imagen: 'assets/images/hotelroma.jpg',
                nombre: 'Continental Roma',
                ubicacion: 'Roma, Italy'),
            HotelesCard(
                imagen: 'assets/images/hotelcb.jpg',
                nombre: 'Continental Casablanca',
                ubicacion: 'Casablanca, Morocco'),
            HotelesCard(
                imagen: 'assets/images/hotelosaka.jpg',
                nombre: 'Continental Osaka',
                ubicacion: 'Osaka, Japan'),
          ],
        ),
      ),
    );
  }
}
