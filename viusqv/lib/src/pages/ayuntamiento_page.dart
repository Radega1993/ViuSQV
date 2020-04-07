import 'package:flutter/material.dart';

import 'package:viusqv/src/providers/menu_providers.dart';
import 'package:viusqv/src/utils/icono_string_util.dart';

class AyuntamientoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuntamiento')
      ),
      body: _lista()
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          children: _listaItems( snapshot.data, context ),
        );

      },
    );

  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context ) {
    
    final List<Widget> opciones = [];
    
    data.forEach((opt){
      
      final widgetTemo = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          
          Navigator.pushNamed(context, opt['ruta']);

         // final route = MaterialPageRoute(
          //  builder: (context) => AlertPage()
          //);

          //Navigator.push(context, route);

        },
      );

      opciones..add(widgetTemo)
              ..add(Divider());

    });

    return opciones;
  }
}