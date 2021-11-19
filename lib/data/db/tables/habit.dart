import 'package:drift/drift.dart';

class Habits extends Table {
  IntColumn get habitId => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get habitName => text()();
  TextColumn get priority => text()();
  IntColumn get repeatEvery => integer().nullable()();
  BoolColumn get notify => boolean()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime().nullable()();
  DateTimeColumn get notifyTime => dateTime().nullable()();
}
