import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:itontiapp/barriere.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BarreMenu(),
    );
  }
}

class BarreMenu extends StatelessWidget {
  const BarreMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [],
        ),
      ),
      body: Barriere(),
    );
  }
}
