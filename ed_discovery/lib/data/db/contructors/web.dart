import 'package:moor/moor_web.dart';

import '../database.dart';

EDdatabase constructDb({bool logStatements = false}) {
  return EDdatabase(WebDatabase('db', logStatements: logStatements));
}
