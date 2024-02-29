import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Ejemplo TabBar",
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: MiPaginaInicial());
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Lopez TabBar"),
            bottom: TabBar(tabs: [
              Tab(
                text: "Flores",
                icon: Icon(Icons.local_florist_outlined),
              ),
              Tab(
                text: "Arreglos",
                icon: Icon(Icons.grass_sharp),
              ),
              Tab(
                text: "Periodos",
                icon: Icon(Icons.filter_vintage_rounded),
              ),
              Tab(
                text: "Somos",
                icon: Icon(Icons.person_outline_rounded),
              ),
            ] //Texto icono
                ),
          ),
          body: TabBarView(children: const <Widget>[
            Center(
              child: Text("FLORES!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
            Center(
              child: Text("ARREGLOS!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
            Center(
              child: Text("FLORES DE TEMPORADA!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
            Center(
              child: Text("NOSOTROS!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
          ]),
        ));
  }
}
