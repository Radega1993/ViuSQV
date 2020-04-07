import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
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