

import 'package:flutter/material.dart';
import 'package:qcs_app/design_system/tile.dart';
import 'package:qcs_app/design_system/custom_app_bar.dart';
import 'package:qcs_app/design_system/custom_grid_view.dart';
import 'package:qcs_app/navigator.dart';
import 'package:qcs_app/repository/trending_coins_repository.dart';
import 'package:qcs_app/models/crypto_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF3F7F9)),


      home: const MyHomePage(title: 'Crypto List'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QCSAPP',

      initialRoute: "/home",

      // init routes
      routes: MyNavigator.getRoutes(),
    );
  }
}
