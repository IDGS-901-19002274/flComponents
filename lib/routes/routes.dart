import 'package:fl_components/Model/menu_option_model.dart';
import 'package:fl_components/Views/error_screen.dart';
import 'package:fl_components/Views/nuevavista1.dart';
import 'package:fl_components/Views/tarjeta_screen.dart';
import 'package:flutter/material.dart';

import '../Views/alert.dart';
import '../Views/home.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const Home(),
    'alert': (BuildContext context) => const AlertPage(),
    // 'avatar': (BuildContext context) => const AvatarPage(),
    'nuevavista1': (BuildContext context) => const Vista1(),
    '/tarjetas': (BuildContext context) => const TarjetaScreen(),
  };
}

onGenerateRoute(settings) {
  return MaterialPageRoute(builder: (context) => const ErrorScreen());
}

final menuOptions = <MenuOption>[
  MenuOption(router: '/', icon: Icons.home, name: 'Jom'),
  MenuOption(router: '/alert', icon: Icons.warning, name: 'Alert'),
  MenuOption(router: '/avatar', icon: Icons.person, name: 'Avatar'),
  MenuOption(
      router: '/nuevavista1', icon: Icons.question_answer, name: 'Nuevavista1'),
  MenuOption(router: '/tarjetas', icon: Icons.card_giftcard, name: 'Tarjetas'),
];
