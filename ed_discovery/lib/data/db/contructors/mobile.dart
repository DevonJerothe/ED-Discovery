import 'package:moor_flutter/moor_flutter.dart';

// import 'dart:io';
// import 'package:moor/moor.dart';
// import 'package:moor_ffi/moor_ffi.dart';
// import 'package:path_provider/path_provider.dart' as paths;
// import 'package:path/path.dart' as p;

import '../database.dart';

EDdatabase constructDb({bool logStatements = false}) {
  return EDdatabase(FlutterQueryExecutor.inDatabaseFolder(
    path: 'appDb.sqlite',
    logStatements: logStatements,
  ));
}
