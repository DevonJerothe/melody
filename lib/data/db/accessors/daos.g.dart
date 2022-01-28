// GENERATED CODE - DO NOT MODIFY BY HAND

part of daos;

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UserDaoMixin on DatabaseAccessor<MelodyDB> {
  $UsersTable get users => attachedDatabase.users;
}
mixin _$MoodDaoMixin on DatabaseAccessor<MelodyDB> {
  $MoodsTable get moods => attachedDatabase.moods;
  $TagsTable get tags => attachedDatabase.tags;
}
