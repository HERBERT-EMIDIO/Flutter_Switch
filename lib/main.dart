import 'package:flutter/material.dart';

import 'entrada_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Entrada_Switch",
      home: EntradaSwitch(),
    );
  }
}
