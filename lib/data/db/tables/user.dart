import 'package:drift/drift.dart';

@DataClassName('Users')
class User extends Table {
  IntColumn get userId => integer().autoIncrement()();
  TextColumn get username => text()();
  TextColumn get password => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  DateTimeColumn get dateCreated => dateTime().nullable()();
  DateTimeColumn get lastLogin => dateTime().nullable()();
}
