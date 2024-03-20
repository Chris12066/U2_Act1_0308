import 'package:flutter/material.dart';
import 'package:alcantara0308/pantallas0308/panel0308/panel_pantalla0308.dart';

void main() => runApp(MyAppAutopartes0308());

class MyAppAutopartes0308 extends StatelessWidget {
  const MyAppAutopartes0308({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Autopartes Alcantara0308",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: PanelPantalla0308(),
    );
  }
}
