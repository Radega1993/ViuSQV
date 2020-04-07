import 'package:flutter/material.dart';

class ConstructionPage extends StatefulWidget {
  @override
  _ConstructionPageState createState() => _ConstructionPageState();
}

class _ConstructionPageState extends State<ConstructionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página en construción'),
      ),
      body: Center(
        child: FadeInImage(
          image: AssetImage('assets/under-construction.png'),
          placeholder: AssetImage('assets/jar_loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      )
    );
  }
}