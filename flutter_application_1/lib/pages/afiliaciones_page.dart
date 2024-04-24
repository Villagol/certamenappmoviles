import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/menuburger.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_application_1/pages/tabs2/clanasesi.dart';
import 'package:flutter_application_1/pages/tabs2/hotelc.dart';
import 'package:flutter_application_1/pages/tabs2/sindicato.dart';

class AfiliacionesPage extends StatelessWidget {
  const AfiliacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Afiliaciones'),
          bottom: TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.red,
            tabs: [
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.home, color: Colors.white),
                    text: 'The continental',
                  )
                ],
              ),
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.group, color: Colors.white),
                    text: 'El Sindicato',
                  )
                ],
              ),
              Column(
                children: [
                  Tab(
                    icon: Icon(MdiIcons.knife, color: Colors.white),
                    text: 'Clanes',
                  )
                ],
              )
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
            ),
          ),
          child: TabBarView(
            children: [Hotelc(), Sindicato(), Clanasesi()],
          ),
        ),
      ),
    );
  }
}
