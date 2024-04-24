import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/afiliaciones_page.dart';
import 'package:flutter_application_1/pages/contratos_page.dart';
import 'package:flutter_application_1/pages/home_inicio.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/hoteles_page.dart';
import 'package:flutter_application_1/pages/perfil_page.dart';
import 'package:flutter_application_1/pages/tabs/doctor.dart';
import 'package:flutter_application_1/pages/tabs/limpiadores.dart';
import 'package:flutter_application_1/pages/tabs/sastre.dart';
import 'package:flutter_application_1/pages/tabs/sommelier.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Servicios'),
          bottom: TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.red,
            isScrollable: true,
            tabs: [
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.pistol, color: Colors.white),
                    text: 'Sommelier',
                  ),
                ],
              ),
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.doctor, color: Colors.white),
                    text: 'Doctor',
                  ),
                ],
              ),
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.hanger, color: Colors.white),
                    text: 'Sastre',
                  ),
                ],
              ),
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.sprayBottle, color: Colors.white),
                    text: 'Limpiadores',
                  ),
                ],
              ),
            ],
          ),
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
          child: TabBarView(
            children: [Sommelier(), Doctor(), Sastre(), Limpiadores()],
          ),
        ),
      ),
    );
  }
}
