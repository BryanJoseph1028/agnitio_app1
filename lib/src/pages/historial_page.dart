import 'package:flutter/material.dart';

class historial extends StatefulWidget {
  const historial({super.key});

  @override
  State<historial> createState() => _historialState();
}

class _historialState extends State<historial> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('serrucho'),
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('martillo'),
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('tornillo'),
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('aceite'),
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('sierra para metal'),
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('Thiner'),
        ),
      ],
    );
  }
}