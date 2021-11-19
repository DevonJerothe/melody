part of 'daos.dart';

@DriftAccessor(tables: [Users])
class UserDao extends DatabaseAccessor<MelodyDB> with _$UserDaoMixin {
  UserDao(MelodyDB db) : super(db);

  /// TODO: This should take a username/pass from either a saved auto login or
  /// directly from the user
  Future<User?> checkForUser() async =>
      (select(users)..limit(1)).getSingleOrNull();

  Future<User> createUser(UsersCompanion newUser) async {
    int id = await into(users).insert(newUser);
    return (select(users)..where((tbl) => tbl.userId.equals(id))).getSingle();
  }
}
