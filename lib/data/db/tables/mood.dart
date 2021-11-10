import 'package:drift/drift.dart';

@DataClassName('Moods')
class Mood extends Table {
  IntColumn get moodId => integer().autoIncrement()();
  IntColumn get userId => integer()();
  IntColumn get habitId => integer().nullable()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get icon => text().nullable()();
  TextColumn get positiveTags => text().nullable()();
  TextColumn get negativeTags => text().nullable()();
  RealColumn get duration => real().nullable()();
  DateTimeColumn get dateCreated => dateTime().nullable()();
  DateTimeColumn get dateChanged => dateTime().nullable()();
}
