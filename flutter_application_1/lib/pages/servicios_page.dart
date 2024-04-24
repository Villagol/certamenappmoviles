import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/tabs/doctor.dart';
import 'package:flutter_application_1/pages/tabs/limpiadores.dart';
import 'package:flutter_application_1/pages/tabs/sastre.dart';
import 'package:flutter_application_1/pages/tabs/sommelier.dart';
import 'package:flutter_application_1/widgets/menuburger.dart';
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
                    text: 'Tailor',
                  ),
                ],
              ),
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.sprayBottle, color: Colors.white),
                    text: 'Cleaners',
                  ),
                ],
              ),
            ],
          ),
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
          )),
          child: TabBarView(
            children: [Sommelier(), Doctor(), Sastre(), Limpiadores()],
          ),
        ),
      ),
    );
  }
}
