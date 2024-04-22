import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/afiliaciones_page.dart';
import 'package:flutter_application_1/pages/home_inicio.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/hoteles_page.dart';
import 'package:flutter_application_1/pages/perfil_page.dart';
import 'package:flutter_application_1/pages/servicios_page.dart';
import 'package:flutter_application_1/widgets/contratos_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContratosPage extends StatelessWidget {
  const ContratosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contratos'),
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
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ContratosCard(
                foto: 'assets/images/zachir.jpg',
                nombre: 'Asesinato por encargo',
                texto: 'Contrato activo',
                recompensa: "10.000 USD",
                fechaLimite: '30-04-2024',
                motivo: 'Venganza'),
            ContratosCard(
                foto: 'assets/images/profe.jpg',
                nombre: 'Asesinato por encargo',
                texto: 'Contrato Disponible',
                recompensa: "10.000 USD",
                fechaLimite: '30-04-2024',
                motivo: 'Venganza'),
            ContratosCard(
                foto: 'assets/images/profegonzalo.jpg',
                nombre: 'Asesinato por encargo',
                texto: 'Contrato activo',
                recompensa: "10.000 USD",
                fechaLimite: '30-04-2024',
                motivo: 'Venganza'),
            ContratosCard(
                foto: 'assets/images/profepame.jpg',
                nombre: 'Asesinato por encargo',
                texto: 'Contrato activo',
                recompensa: "10.000 USD",
                fechaLimite: '30-04-2024',
                motivo: 'Venganza'),
            ContratosCard(
                foto: 'assets/images/profegabriel.jpg',
                nombre: 'Asesinato por encargo',
                texto: 'Contrato activo',
                recompensa: "10.000 USD",
                fechaLimite: '30-04-2024',
                motivo: 'Venganza'),
          ],
        ),
      ),
    );
  }
}
