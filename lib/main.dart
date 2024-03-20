import 'package:flutter/material.dart';
import 'package:meraz0388/pantallas0388/panel0388/panel_pantalla0388.dart';

void main() => runApp(MiAppPlaystation0388());

class MiAppPlaystation0388 extends StatelessWidget {
  const MiAppPlaystation0388({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PlayStation Meraz0388",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true),
      home: PanelPantalla0388(),
    );
  }
}
