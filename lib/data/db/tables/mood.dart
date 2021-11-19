import 'package:drift/drift.dart';

class Moods extends Table {
  IntColumn get moodId => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get description => text()();
  TextColumn get title => text()();
  DateTimeColumn get dateCreated => dateTime()();
  IntColumn get color => integer().nullable()();
  TextColumn get habitIds => text().nullable()();
  TextColumn get icon => text().nullable()();
  TextColumn get positiveTagsIds => text().nullable()();
  TextColumn get negativeTagsIds => text().nullable()();
  RealColumn get duration => real().nullable()();
  DateTimeColumn get dateEnded => dateTime().nullable()();
  DateTimeColumn get dateChanged => dateTime().nullable()();
  IntColumn get moodCount => integer().withDefault(const Constant(1))();
}
