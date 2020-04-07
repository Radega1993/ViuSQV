import 'package:flutter/material.dart';

import 'package:viusqv/src/pages/home_page.dart';
import 'package:viusqv/src/pages/construction_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'construction' : (BuildContext context) => ConstructionPage(),

  };

}

