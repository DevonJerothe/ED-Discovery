import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'data/db/contructors/shared.dart';
import 'data/db/database.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<EDdatabase>(constructDb());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      
    );
  }
}
