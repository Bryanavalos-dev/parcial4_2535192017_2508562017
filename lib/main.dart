import 'package:flutter/material.dart';
import 'package:parcial4_2535192017_2508562017/app/ui/paginas/home/principal.dart';

void main() {
  runApp(parcial());
}

class parcial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PrincipalPage(),
    );
  }
}
