import 'package:drift/drift.dart';

@DataClassName('Moods')
class Mood extends Table {
  IntColumn get moodId => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get description => text()();
  TextColumn get title => text()();
  IntColumn get color => integer().nullable()();
  IntColumn get habitId => integer().nullable()();
  TextColumn get icon => text().nullable()();
  TextColumn get positiveTags => text().nullable()();
  TextColumn get negativeTags => text().nullable()();
  RealColumn get duration => real().nullable()();
  DateTimeColumn get dateCreated => dateTime().nullable()();
  DateTimeColumn get dateChanged => dateTime().nullable()();
}
