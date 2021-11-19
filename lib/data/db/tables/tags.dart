import 'package:drift/drift.dart';

class Tags extends Table {
  IntColumn get tagId => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get title => text()();
  BoolColumn get isNegative => boolean().withDefault(const Constant(false))();
}
