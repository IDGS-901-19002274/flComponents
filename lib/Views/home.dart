import 'package:fl_components/Widgets/widget.dart';
import 'package:fl_components/providers/menu_provider.dart';
import 'package:fl_components/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      endDrawer: const DrawerWidget(),
      body: _Lista(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _Lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
        ),
        onTap: () {
          // final route =
          //     MaterialPageRoute(builder: (context) => const AlertPage());
          // Navigator.push(context, route);

          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    });

    return opciones;
  }
}
