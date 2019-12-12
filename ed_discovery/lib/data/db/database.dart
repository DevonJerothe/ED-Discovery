

import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@UseMoor(tables: [])
class EDdatabase extends _$EDdatabase {
  EDdatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 4;

}
