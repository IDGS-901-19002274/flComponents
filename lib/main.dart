import 'package:fl_components/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/theme/global_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: lightTheme,
      // home: Home(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (settings) => onGenerateRoute(settings),
    );
  }
}
