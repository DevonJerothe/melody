import 'package:drift/drift.dart';
import '../database.dart';
import '../tables/tables.dart';

part 'user_dao.g.dart';

@DriftAccessor(tables: [User])
class UserDao extends DatabaseAccessor<MelodyDB> with _$UserDaoMixin {
  UserDao(MelodyDB db) : super(db);

  /// TODO: This should take a username/pass from either a saved auto login or
  /// directly from the user
  Future<Users?> checkForUser() async =>
      (select(user)..limit(1)).getSingleOrNull();

  Future<Users> createUser(UserCompanion newUser) async {
    int id = await into(user).insert(newUser);
    return (select(user)..where((tbl) => tbl.userId.equals(id))).getSingle();
  }
}
