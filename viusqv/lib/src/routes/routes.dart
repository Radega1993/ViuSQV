import 'package:flutter/material.dart';

import 'package:viusqv/src/pages/home_page.dart';
import 'package:viusqv/src/pages/ayuntamiento_page.dart';
import 'package:viusqv/src/pages/deporte_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'ayuntamiento' : (BuildContext context) => AyuntamientoPage(),
        'deporte' : (BuildContext context) => DeportePage(),
  };

}

