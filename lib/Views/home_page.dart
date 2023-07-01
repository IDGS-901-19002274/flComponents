import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  // ignore: unused_element
  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista
        ..add(tempWidget)
        ..add(const Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    var widg = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$item!'),
            subtitle: Text('Cualquier cosa en $item'),
            leading: const Icon(Icons.access_time_outlined),
            trailing: const Icon(Icons.ad_units_sharp),
            onTap: () {},
          ),
          const Divider(),
        ],
      );
    }).toList();

    return widg;
  }
}
