import 'package:flutter/material.dart';

import 'package:viusqv/src/providers/menu_providers.dart';
import 'package:viusqv/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Viu SQV')
      ),
      body: _lista()
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){

        return GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: _listaItems( snapshot.data, context ),
        );

      },
    );

  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context ) {
    
    final List<Widget> opciones = [];
    
    data.forEach((opt){
      
      final widgetTemo = GridTile(
        child: GestureDetector(
          child: Card(
            elevation: 5.0,
            child: Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: NetworkImage(opt['image']),
                  fit: BoxFit.fill,
              
                ),
              ),
              child: Center(
                child: Text(
                  opt['texto'],
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                )
              )
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
          },
        )
      );
      
      opciones..add(widgetTemo);
    
    });  

    return opciones;
  }
}