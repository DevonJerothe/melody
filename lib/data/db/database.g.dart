// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Users extends DataClass implements Insertable<Users> {
  final int userId;
  final String username;
  final String password;
  final String name;
  final String email;
  final DateTime? dateCreated;
  final DateTime? lastLogin;
  Users(
      {required this.userId,
      required this.username,
      required this.password,
      required this.name,
      required this.email,
      this.dateCreated,
      this.lastLogin});
  factory Users.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Users(
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username'])!,
      password: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}password'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      dateCreated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_created']),
      lastLogin: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_login']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<int>(userId);
    map['username'] = Variable<String>(username);
    map['password'] = Variable<String>(password);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    if (!nullToAbsent || dateCreated != null) {
      map['date_created'] = Variable<DateTime?>(dateCreated);
    }
    if (!nullToAbsent || lastLogin != null) {
      map['last_login'] = Variable<DateTime?>(lastLogin);
    }
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      userId: Value(userId),
      username: Value(username),
      password: Value(password),
      name: Value(name),
      email: Value(email),
      dateCreated: dateCreated == null && nullToAbsent
          ? const Value.absent()
          : Value(dateCreated),
      lastLogin: lastLogin == null && nullToAbsent
          ? const Value.absent()
          : Value(lastLogin),
    );
  }

  factory Users.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Users(
      userId: serializer.fromJson<int>(json['userId']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      dateCreated: serializer.fromJson<DateTime?>(json['dateCreated']),
      lastLogin: serializer.fromJson<DateTime?>(json['lastLogin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'dateCreated': serializer.toJson<DateTime?>(dateCreated),
      'lastLogin': serializer.toJson<DateTime?>(lastLogin),
    };
  }

  Users copyWith(
          {int? userId,
          String? username,
          String? password,
          String? name,
          String? email,
          DateTime? dateCreated,
          DateTime? lastLogin}) =>
      Users(
        userId: userId ?? this.userId,
        username: username ?? this.username,
        password: password ?? this.password,
        name: name ?? this.name,
        email: email ?? this.email,
        dateCreated: dateCreated ?? this.dateCreated,
        lastLogin: lastLogin ?? this.lastLogin,
      );
  @override
  String toString() {
    return (StringBuffer('Users(')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('lastLogin: $lastLogin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userId, username, password, name, email, dateCreated, lastLogin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Users &&
          other.userId == this.userId &&
          other.username == this.username &&
          other.password == this.password &&
          other.name == this.name &&
          other.email == this.email &&
          other.dateCreated == this.dateCreated &&
          other.lastLogin == this.lastLogin);
}

class UserCompanion extends UpdateCompanion<Users> {
  final Value<int> userId;
  final Value<String> username;
  final Value<String> password;
  final Value<String> name;
  final Value<String> email;
  final Value<DateTime?> dateCreated;
  final Value<DateTime?> lastLogin;
  const UserCompanion({
    this.userId = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.lastLogin = const Value.absent(),
  });
  UserCompanion.insert({
    this.userId = const Value.absent(),
    required String username,
    required String password,
    required String name,
    required String email,
    this.dateCreated = const Value.absent(),
    this.lastLogin = const Value.absent(),
  })  : username = Value(username),
        password = Value(password),
        name = Value(name),
        email = Value(email);
  static Insertable<Users> custom({
    Expression<int>? userId,
    Expression<String>? username,
    Expression<String>? password,
    Expression<String>? name,
    Expression<String>? email,
    Expression<DateTime?>? dateCreated,
    Expression<DateTime?>? lastLogin,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (dateCreated != null) 'date_created': dateCreated,
      if (lastLogin != null) 'last_login': lastLogin,
    });
  }

  UserCompanion copyWith(
      {Value<int>? userId,
      Value<String>? username,
      Value<String>? password,
      Value<String>? name,
      Value<String>? email,
      Value<DateTime?>? dateCreated,
      Value<DateTime?>? lastLogin}) {
    return UserCompanion(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      password: password ?? this.password,
      name: name ?? this.name,
      email: email ?? this.email,
      dateCreated: dateCreated ?? this.dateCreated,
      lastLogin: lastLogin ?? this.lastLogin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime?>(dateCreated.value);
    }
    if (lastLogin.present) {
      map['last_login'] = Variable<DateTime?>(lastLogin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('lastLogin: $lastLogin')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, Users> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UserTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  late final GeneratedColumn<String?> username = GeneratedColumn<String?>(
      'username', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  late final GeneratedColumn<String?> password = GeneratedColumn<String?>(
      'password', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  late final GeneratedColumn<DateTime?> dateCreated =
      GeneratedColumn<DateTime?>('date_created', aliasedName, true,
          typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _lastLoginMeta = const VerificationMeta('lastLogin');
  late final GeneratedColumn<DateTime?> lastLogin = GeneratedColumn<DateTime?>(
      'last_login', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [userId, username, password, name, email, dateCreated, lastLogin];
  @override
  String get aliasedName => _alias ?? 'user';
  @override
  String get actualTableName => 'user';
  @override
  VerificationContext validateIntegrity(Insertable<Users> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    if (data.containsKey('last_login')) {
      context.handle(_lastLoginMeta,
          lastLogin.isAcceptableOrUnknown(data['last_login']!, _lastLoginMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  Users map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Users.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(_db, alias);
  }
}

class Moods extends DataClass implements Insertable<Moods> {
  final int moodId;
  final int userId;
  final int? habitId;
  final String title;
  final String description;
  final String? icon;
  final String? positiveTags;
  final String? negativeTags;
  final double? duration;
  final DateTime? dateCreated;
  final DateTime? dateChanged;
  Moods(
      {required this.moodId,
      required this.userId,
      this.habitId,
      required this.title,
      required this.description,
      this.icon,
      this.positiveTags,
      this.negativeTags,
      this.duration,
      this.dateCreated,
      this.dateChanged});
  factory Moods.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Moods(
      moodId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mood_id'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      habitId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}habit_id']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      icon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon']),
      positiveTags: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}positive_tags']),
      negativeTags: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}negative_tags']),
      duration: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}duration']),
      dateCreated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_created']),
      dateChanged: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_changed']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['mood_id'] = Variable<int>(moodId);
    map['user_id'] = Variable<int>(userId);
    if (!nullToAbsent || habitId != null) {
      map['habit_id'] = Variable<int?>(habitId);
    }
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String?>(icon);
    }
    if (!nullToAbsent || positiveTags != null) {
      map['positive_tags'] = Variable<String?>(positiveTags);
    }
    if (!nullToAbsent || negativeTags != null) {
      map['negative_tags'] = Variable<String?>(negativeTags);
    }
    if (!nullToAbsent || duration != null) {
      map['duration'] = Variable<double?>(duration);
    }
    if (!nullToAbsent || dateCreated != null) {
      map['date_created'] = Variable<DateTime?>(dateCreated);
    }
    if (!nullToAbsent || dateChanged != null) {
      map['date_changed'] = Variable<DateTime?>(dateChanged);
    }
    return map;
  }

  MoodCompanion toCompanion(bool nullToAbsent) {
    return MoodCompanion(
      moodId: Value(moodId),
      userId: Value(userId),
      habitId: habitId == null && nullToAbsent
          ? const Value.absent()
          : Value(habitId),
      title: Value(title),
      description: Value(description),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      positiveTags: positiveTags == null && nullToAbsent
          ? const Value.absent()
          : Value(positiveTags),
      negativeTags: negativeTags == null && nullToAbsent
          ? const Value.absent()
          : Value(negativeTags),
      duration: duration == null && nullToAbsent
          ? const Value.absent()
          : Value(duration),
      dateCreated: dateCreated == null && nullToAbsent
          ? const Value.absent()
          : Value(dateCreated),
      dateChanged: dateChanged == null && nullToAbsent
          ? const Value.absent()
          : Value(dateChanged),
    );
  }

  factory Moods.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Moods(
      moodId: serializer.fromJson<int>(json['moodId']),
      userId: serializer.fromJson<int>(json['userId']),
      habitId: serializer.fromJson<int?>(json['habitId']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      icon: serializer.fromJson<String?>(json['icon']),
      positiveTags: serializer.fromJson<String?>(json['positiveTags']),
      negativeTags: serializer.fromJson<String?>(json['negativeTags']),
      duration: serializer.fromJson<double?>(json['duration']),
      dateCreated: serializer.fromJson<DateTime?>(json['dateCreated']),
      dateChanged: serializer.fromJson<DateTime?>(json['dateChanged']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'moodId': serializer.toJson<int>(moodId),
      'userId': serializer.toJson<int>(userId),
      'habitId': serializer.toJson<int?>(habitId),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'icon': serializer.toJson<String?>(icon),
      'positiveTags': serializer.toJson<String?>(positiveTags),
      'negativeTags': serializer.toJson<String?>(negativeTags),
      'duration': serializer.toJson<double?>(duration),
      'dateCreated': serializer.toJson<DateTime?>(dateCreated),
      'dateChanged': serializer.toJson<DateTime?>(dateChanged),
    };
  }

  Moods copyWith(
          {int? moodId,
          int? userId,
          int? habitId,
          String? title,
          String? description,
          String? icon,
          String? positiveTags,
          String? negativeTags,
          double? duration,
          DateTime? dateCreated,
          DateTime? dateChanged}) =>
      Moods(
        moodId: moodId ?? this.moodId,
        userId: userId ?? this.userId,
        habitId: habitId ?? this.habitId,
        title: title ?? this.title,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        positiveTags: positiveTags ?? this.positiveTags,
        negativeTags: negativeTags ?? this.negativeTags,
        duration: duration ?? this.duration,
        dateCreated: dateCreated ?? this.dateCreated,
        dateChanged: dateChanged ?? this.dateChanged,
      );
  @override
  String toString() {
    return (StringBuffer('Moods(')
          ..write('moodId: $moodId, ')
          ..write('userId: $userId, ')
          ..write('habitId: $habitId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('icon: $icon, ')
          ..write('positiveTags: $positiveTags, ')
          ..write('negativeTags: $negativeTags, ')
          ..write('duration: $duration, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('dateChanged: $dateChanged')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(moodId, userId, habitId, title, description,
      icon, positiveTags, negativeTags, duration, dateCreated, dateChanged);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Moods &&
          other.moodId == this.moodId &&
          other.userId == this.userId &&
          other.habitId == this.habitId &&
          other.title == this.title &&
          other.description == this.description &&
          other.icon == this.icon &&
          other.positiveTags == this.positiveTags &&
          other.negativeTags == this.negativeTags &&
          other.duration == this.duration &&
          other.dateCreated == this.dateCreated &&
          other.dateChanged == this.dateChanged);
}

class MoodCompanion extends UpdateCompanion<Moods> {
  final Value<int> moodId;
  final Value<int> userId;
  final Value<int?> habitId;
  final Value<String> title;
  final Value<String> description;
  final Value<String?> icon;
  final Value<String?> positiveTags;
  final Value<String?> negativeTags;
  final Value<double?> duration;
  final Value<DateTime?> dateCreated;
  final Value<DateTime?> dateChanged;
  const MoodCompanion({
    this.moodId = const Value.absent(),
    this.userId = const Value.absent(),
    this.habitId = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.icon = const Value.absent(),
    this.positiveTags = const Value.absent(),
    this.negativeTags = const Value.absent(),
    this.duration = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.dateChanged = const Value.absent(),
  });
  MoodCompanion.insert({
    this.moodId = const Value.absent(),
    required int userId,
    this.habitId = const Value.absent(),
    required String title,
    required String description,
    this.icon = const Value.absent(),
    this.positiveTags = const Value.absent(),
    this.negativeTags = const Value.absent(),
    this.duration = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.dateChanged = const Value.absent(),
  })  : userId = Value(userId),
        title = Value(title),
        description = Value(description);
  static Insertable<Moods> custom({
    Expression<int>? moodId,
    Expression<int>? userId,
    Expression<int?>? habitId,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String?>? icon,
    Expression<String?>? positiveTags,
    Expression<String?>? negativeTags,
    Expression<double?>? duration,
    Expression<DateTime?>? dateCreated,
    Expression<DateTime?>? dateChanged,
  }) {
    return RawValuesInsertable({
      if (moodId != null) 'mood_id': moodId,
      if (userId != null) 'user_id': userId,
      if (habitId != null) 'habit_id': habitId,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (icon != null) 'icon': icon,
      if (positiveTags != null) 'positive_tags': positiveTags,
      if (negativeTags != null) 'negative_tags': negativeTags,
      if (duration != null) 'duration': duration,
      if (dateCreated != null) 'date_created': dateCreated,
      if (dateChanged != null) 'date_changed': dateChanged,
    });
  }

  MoodCompanion copyWith(
      {Value<int>? moodId,
      Value<int>? userId,
      Value<int?>? habitId,
      Value<String>? title,
      Value<String>? description,
      Value<String?>? icon,
      Value<String?>? positiveTags,
      Value<String?>? negativeTags,
      Value<double?>? duration,
      Value<DateTime?>? dateCreated,
      Value<DateTime?>? dateChanged}) {
    return MoodCompanion(
      moodId: moodId ?? this.moodId,
      userId: userId ?? this.userId,
      habitId: habitId ?? this.habitId,
      title: title ?? this.title,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      positiveTags: positiveTags ?? this.positiveTags,
      negativeTags: negativeTags ?? this.negativeTags,
      duration: duration ?? this.duration,
      dateCreated: dateCreated ?? this.dateCreated,
      dateChanged: dateChanged ?? this.dateChanged,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (moodId.present) {
      map['mood_id'] = Variable<int>(moodId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (habitId.present) {
      map['habit_id'] = Variable<int?>(habitId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String?>(icon.value);
    }
    if (positiveTags.present) {
      map['positive_tags'] = Variable<String?>(positiveTags.value);
    }
    if (negativeTags.present) {
      map['negative_tags'] = Variable<String?>(negativeTags.value);
    }
    if (duration.present) {
      map['duration'] = Variable<double?>(duration.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime?>(dateCreated.value);
    }
    if (dateChanged.present) {
      map['date_changed'] = Variable<DateTime?>(dateChanged.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoodCompanion(')
          ..write('moodId: $moodId, ')
          ..write('userId: $userId, ')
          ..write('habitId: $habitId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('icon: $icon, ')
          ..write('positiveTags: $positiveTags, ')
          ..write('negativeTags: $negativeTags, ')
          ..write('duration: $duration, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('dateChanged: $dateChanged')
          ..write(')'))
        .toString();
  }
}

class $MoodTable extends Mood with TableInfo<$MoodTable, Moods> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MoodTable(this._db, [this._alias]);
  final VerificationMeta _moodIdMeta = const VerificationMeta('moodId');
  late final GeneratedColumn<int?> moodId = GeneratedColumn<int?>(
      'mood_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _habitIdMeta = const VerificationMeta('habitId');
  late final GeneratedColumn<int?> habitId = GeneratedColumn<int?>(
      'habit_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  late final GeneratedColumn<String?> icon = GeneratedColumn<String?>(
      'icon', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _positiveTagsMeta =
      const VerificationMeta('positiveTags');
  late final GeneratedColumn<String?> positiveTags = GeneratedColumn<String?>(
      'positive_tags', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _negativeTagsMeta =
      const VerificationMeta('negativeTags');
  late final GeneratedColumn<String?> negativeTags = GeneratedColumn<String?>(
      'negative_tags', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _durationMeta = const VerificationMeta('duration');
  late final GeneratedColumn<double?> duration = GeneratedColumn<double?>(
      'duration', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false);
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  late final GeneratedColumn<DateTime?> dateCreated =
      GeneratedColumn<DateTime?>('date_created', aliasedName, true,
          typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _dateChangedMeta =
      const VerificationMeta('dateChanged');
  late final GeneratedColumn<DateTime?> dateChanged =
      GeneratedColumn<DateTime?>('date_changed', aliasedName, true,
          typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        moodId,
        userId,
        habitId,
        title,
        description,
        icon,
        positiveTags,
        negativeTags,
        duration,
        dateCreated,
        dateChanged
      ];
  @override
  String get aliasedName => _alias ?? 'mood';
  @override
  String get actualTableName => 'mood';
  @override
  VerificationContext validateIntegrity(Insertable<Moods> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('mood_id')) {
      context.handle(_moodIdMeta,
          moodId.isAcceptableOrUnknown(data['mood_id']!, _moodIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('habit_id')) {
      context.handle(_habitIdMeta,
          habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    }
    if (data.containsKey('positive_tags')) {
      context.handle(
          _positiveTagsMeta,
          positiveTags.isAcceptableOrUnknown(
              data['positive_tags']!, _positiveTagsMeta));
    }
    if (data.containsKey('negative_tags')) {
      context.handle(
          _negativeTagsMeta,
          negativeTags.isAcceptableOrUnknown(
              data['negative_tags']!, _negativeTagsMeta));
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    if (data.containsKey('date_changed')) {
      context.handle(
          _dateChangedMeta,
          dateChanged.isAcceptableOrUnknown(
              data['date_changed']!, _dateChangedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {moodId};
  @override
  Moods map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Moods.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoodTable createAlias(String alias) {
    return $MoodTable(_db, alias);
  }
}

class Habits extends DataClass implements Insertable<Habits> {
  final int habitId;
  final int userId;
  final String habitName;
  final String priority;
  final int? repeatEvery;
  final bool notify;
  final DateTime startDate;
  final DateTime? endDate;
  final DateTime? notifyTime;
  Habits(
      {required this.habitId,
      required this.userId,
      required this.habitName,
      required this.priority,
      this.repeatEvery,
      required this.notify,
      required this.startDate,
      this.endDate,
      this.notifyTime});
  factory Habits.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Habits(
      habitId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}habit_id'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      habitName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}habit_name'])!,
      priority: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}priority'])!,
      repeatEvery: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}repeat_every']),
      notify: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}notify'])!,
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date'])!,
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date']),
      notifyTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}notify_time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['habit_id'] = Variable<int>(habitId);
    map['user_id'] = Variable<int>(userId);
    map['habit_name'] = Variable<String>(habitName);
    map['priority'] = Variable<String>(priority);
    if (!nullToAbsent || repeatEvery != null) {
      map['repeat_every'] = Variable<int?>(repeatEvery);
    }
    map['notify'] = Variable<bool>(notify);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime?>(endDate);
    }
    if (!nullToAbsent || notifyTime != null) {
      map['notify_time'] = Variable<DateTime?>(notifyTime);
    }
    return map;
  }

  HabitCompanion toCompanion(bool nullToAbsent) {
    return HabitCompanion(
      habitId: Value(habitId),
      userId: Value(userId),
      habitName: Value(habitName),
      priority: Value(priority),
      repeatEvery: repeatEvery == null && nullToAbsent
          ? const Value.absent()
          : Value(repeatEvery),
      notify: Value(notify),
      startDate: Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      notifyTime: notifyTime == null && nullToAbsent
          ? const Value.absent()
          : Value(notifyTime),
    );
  }

  factory Habits.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Habits(
      habitId: serializer.fromJson<int>(json['habitId']),
      userId: serializer.fromJson<int>(json['userId']),
      habitName: serializer.fromJson<String>(json['habitName']),
      priority: serializer.fromJson<String>(json['priority']),
      repeatEvery: serializer.fromJson<int?>(json['repeatEvery']),
      notify: serializer.fromJson<bool>(json['notify']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      notifyTime: serializer.fromJson<DateTime?>(json['notifyTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'habitId': serializer.toJson<int>(habitId),
      'userId': serializer.toJson<int>(userId),
      'habitName': serializer.toJson<String>(habitName),
      'priority': serializer.toJson<String>(priority),
      'repeatEvery': serializer.toJson<int?>(repeatEvery),
      'notify': serializer.toJson<bool>(notify),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'notifyTime': serializer.toJson<DateTime?>(notifyTime),
    };
  }

  Habits copyWith(
          {int? habitId,
          int? userId,
          String? habitName,
          String? priority,
          int? repeatEvery,
          bool? notify,
          DateTime? startDate,
          DateTime? endDate,
          DateTime? notifyTime}) =>
      Habits(
        habitId: habitId ?? this.habitId,
        userId: userId ?? this.userId,
        habitName: habitName ?? this.habitName,
        priority: priority ?? this.priority,
        repeatEvery: repeatEvery ?? this.repeatEvery,
        notify: notify ?? this.notify,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        notifyTime: notifyTime ?? this.notifyTime,
      );
  @override
  String toString() {
    return (StringBuffer('Habits(')
          ..write('habitId: $habitId, ')
          ..write('userId: $userId, ')
          ..write('habitName: $habitName, ')
          ..write('priority: $priority, ')
          ..write('repeatEvery: $repeatEvery, ')
          ..write('notify: $notify, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('notifyTime: $notifyTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(habitId, userId, habitName, priority,
      repeatEvery, notify, startDate, endDate, notifyTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Habits &&
          other.habitId == this.habitId &&
          other.userId == this.userId &&
          other.habitName == this.habitName &&
          other.priority == this.priority &&
          other.repeatEvery == this.repeatEvery &&
          other.notify == this.notify &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.notifyTime == this.notifyTime);
}

class HabitCompanion extends UpdateCompanion<Habits> {
  final Value<int> habitId;
  final Value<int> userId;
  final Value<String> habitName;
  final Value<String> priority;
  final Value<int?> repeatEvery;
  final Value<bool> notify;
  final Value<DateTime> startDate;
  final Value<DateTime?> endDate;
  final Value<DateTime?> notifyTime;
  const HabitCompanion({
    this.habitId = const Value.absent(),
    this.userId = const Value.absent(),
    this.habitName = const Value.absent(),
    this.priority = const Value.absent(),
    this.repeatEvery = const Value.absent(),
    this.notify = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.notifyTime = const Value.absent(),
  });
  HabitCompanion.insert({
    this.habitId = const Value.absent(),
    required int userId,
    required String habitName,
    required String priority,
    this.repeatEvery = const Value.absent(),
    required bool notify,
    required DateTime startDate,
    this.endDate = const Value.absent(),
    this.notifyTime = const Value.absent(),
  })  : userId = Value(userId),
        habitName = Value(habitName),
        priority = Value(priority),
        notify = Value(notify),
        startDate = Value(startDate);
  static Insertable<Habits> custom({
    Expression<int>? habitId,
    Expression<int>? userId,
    Expression<String>? habitName,
    Expression<String>? priority,
    Expression<int?>? repeatEvery,
    Expression<bool>? notify,
    Expression<DateTime>? startDate,
    Expression<DateTime?>? endDate,
    Expression<DateTime?>? notifyTime,
  }) {
    return RawValuesInsertable({
      if (habitId != null) 'habit_id': habitId,
      if (userId != null) 'user_id': userId,
      if (habitName != null) 'habit_name': habitName,
      if (priority != null) 'priority': priority,
      if (repeatEvery != null) 'repeat_every': repeatEvery,
      if (notify != null) 'notify': notify,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (notifyTime != null) 'notify_time': notifyTime,
    });
  }

  HabitCompanion copyWith(
      {Value<int>? habitId,
      Value<int>? userId,
      Value<String>? habitName,
      Value<String>? priority,
      Value<int?>? repeatEvery,
      Value<bool>? notify,
      Value<DateTime>? startDate,
      Value<DateTime?>? endDate,
      Value<DateTime?>? notifyTime}) {
    return HabitCompanion(
      habitId: habitId ?? this.habitId,
      userId: userId ?? this.userId,
      habitName: habitName ?? this.habitName,
      priority: priority ?? this.priority,
      repeatEvery: repeatEvery ?? this.repeatEvery,
      notify: notify ?? this.notify,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      notifyTime: notifyTime ?? this.notifyTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (habitId.present) {
      map['habit_id'] = Variable<int>(habitId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (habitName.present) {
      map['habit_name'] = Variable<String>(habitName.value);
    }
    if (priority.present) {
      map['priority'] = Variable<String>(priority.value);
    }
    if (repeatEvery.present) {
      map['repeat_every'] = Variable<int?>(repeatEvery.value);
    }
    if (notify.present) {
      map['notify'] = Variable<bool>(notify.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime?>(endDate.value);
    }
    if (notifyTime.present) {
      map['notify_time'] = Variable<DateTime?>(notifyTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitCompanion(')
          ..write('habitId: $habitId, ')
          ..write('userId: $userId, ')
          ..write('habitName: $habitName, ')
          ..write('priority: $priority, ')
          ..write('repeatEvery: $repeatEvery, ')
          ..write('notify: $notify, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('notifyTime: $notifyTime')
          ..write(')'))
        .toString();
  }
}

class $HabitTable extends Habit with TableInfo<$HabitTable, Habits> {
  final GeneratedDatabase _db;
  final String? _alias;
  $HabitTable(this._db, [this._alias]);
  final VerificationMeta _habitIdMeta = const VerificationMeta('habitId');
  late final GeneratedColumn<int?> habitId = GeneratedColumn<int?>(
      'habit_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _habitNameMeta = const VerificationMeta('habitName');
  late final GeneratedColumn<String?> habitName = GeneratedColumn<String?>(
      'habit_name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _priorityMeta = const VerificationMeta('priority');
  late final GeneratedColumn<String?> priority = GeneratedColumn<String?>(
      'priority', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _repeatEveryMeta =
      const VerificationMeta('repeatEvery');
  late final GeneratedColumn<int?> repeatEvery = GeneratedColumn<int?>(
      'repeat_every', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _notifyMeta = const VerificationMeta('notify');
  late final GeneratedColumn<bool?> notify = GeneratedColumn<bool?>(
      'notify', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (notify IN (0, 1))');
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  late final GeneratedColumn<DateTime?> startDate = GeneratedColumn<DateTime?>(
      'start_date', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  late final GeneratedColumn<DateTime?> endDate = GeneratedColumn<DateTime?>(
      'end_date', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _notifyTimeMeta = const VerificationMeta('notifyTime');
  late final GeneratedColumn<DateTime?> notifyTime = GeneratedColumn<DateTime?>(
      'notify_time', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        habitId,
        userId,
        habitName,
        priority,
        repeatEvery,
        notify,
        startDate,
        endDate,
        notifyTime
      ];
  @override
  String get aliasedName => _alias ?? 'habit';
  @override
  String get actualTableName => 'habit';
  @override
  VerificationContext validateIntegrity(Insertable<Habits> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('habit_id')) {
      context.handle(_habitIdMeta,
          habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('habit_name')) {
      context.handle(_habitNameMeta,
          habitName.isAcceptableOrUnknown(data['habit_name']!, _habitNameMeta));
    } else if (isInserting) {
      context.missing(_habitNameMeta);
    }
    if (data.containsKey('priority')) {
      context.handle(_priorityMeta,
          priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta));
    } else if (isInserting) {
      context.missing(_priorityMeta);
    }
    if (data.containsKey('repeat_every')) {
      context.handle(
          _repeatEveryMeta,
          repeatEvery.isAcceptableOrUnknown(
              data['repeat_every']!, _repeatEveryMeta));
    }
    if (data.containsKey('notify')) {
      context.handle(_notifyMeta,
          notify.isAcceptableOrUnknown(data['notify']!, _notifyMeta));
    } else if (isInserting) {
      context.missing(_notifyMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('notify_time')) {
      context.handle(
          _notifyTimeMeta,
          notifyTime.isAcceptableOrUnknown(
              data['notify_time']!, _notifyTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {habitId};
  @override
  Habits map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Habits.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HabitTable createAlias(String alias) {
    return $HabitTable(_db, alias);
  }
}

abstract class _$MelodyDB extends GeneratedDatabase {
  _$MelodyDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UserTable user = $UserTable(this);
  late final $MoodTable mood = $MoodTable(this);
  late final $HabitTable habit = $HabitTable(this);
  late final UserDao userDao = UserDao(this as MelodyDB);
  late final MoodDao moodDao = MoodDao(this as MelodyDB);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [user, mood, habit];
}
