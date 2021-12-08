// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Tag extends DataClass implements Insertable<Tag> {
  final int tagId;
  final int userId;
  final String title;
  final bool isNegative;
  Tag(
      {required this.tagId,
      required this.userId,
      required this.title,
      required this.isNegative});
  factory Tag.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Tag(
      tagId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tag_id'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      isNegative: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_negative'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['tag_id'] = Variable<int>(tagId);
    map['user_id'] = Variable<int>(userId);
    map['title'] = Variable<String>(title);
    map['is_negative'] = Variable<bool>(isNegative);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      tagId: Value(tagId),
      userId: Value(userId),
      title: Value(title),
      isNegative: Value(isNegative),
    );
  }

  factory Tag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tag(
      tagId: serializer.fromJson<int>(json['tagId']),
      userId: serializer.fromJson<int>(json['userId']),
      title: serializer.fromJson<String>(json['title']),
      isNegative: serializer.fromJson<bool>(json['isNegative']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tagId': serializer.toJson<int>(tagId),
      'userId': serializer.toJson<int>(userId),
      'title': serializer.toJson<String>(title),
      'isNegative': serializer.toJson<bool>(isNegative),
    };
  }

  Tag copyWith({int? tagId, int? userId, String? title, bool? isNegative}) =>
      Tag(
        tagId: tagId ?? this.tagId,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        isNegative: isNegative ?? this.isNegative,
      );
  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('tagId: $tagId, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('isNegative: $isNegative')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(tagId, userId, title, isNegative);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          other.tagId == this.tagId &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.isNegative == this.isNegative);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<int> tagId;
  final Value<int> userId;
  final Value<String> title;
  final Value<bool> isNegative;
  const TagsCompanion({
    this.tagId = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.isNegative = const Value.absent(),
  });
  TagsCompanion.insert({
    this.tagId = const Value.absent(),
    required int userId,
    required String title,
    this.isNegative = const Value.absent(),
  })  : userId = Value(userId),
        title = Value(title);
  static Insertable<Tag> custom({
    Expression<int>? tagId,
    Expression<int>? userId,
    Expression<String>? title,
    Expression<bool>? isNegative,
  }) {
    return RawValuesInsertable({
      if (tagId != null) 'tag_id': tagId,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (isNegative != null) 'is_negative': isNegative,
    });
  }

  TagsCompanion copyWith(
      {Value<int>? tagId,
      Value<int>? userId,
      Value<String>? title,
      Value<bool>? isNegative}) {
    return TagsCompanion(
      tagId: tagId ?? this.tagId,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      isNegative: isNegative ?? this.isNegative,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (isNegative.present) {
      map['is_negative'] = Variable<bool>(isNegative.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('tagId: $tagId, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('isNegative: $isNegative')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TagsTable(this._db, [this._alias]);
  final VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  late final GeneratedColumn<int?> tagId = GeneratedColumn<int?>(
      'tag_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _isNegativeMeta = const VerificationMeta('isNegative');
  late final GeneratedColumn<bool?> isNegative = GeneratedColumn<bool?>(
      'is_negative', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_negative IN (0, 1))',
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [tagId, userId, title, isNegative];
  @override
  String get aliasedName => _alias ?? 'tags';
  @override
  String get actualTableName => 'tags';
  @override
  VerificationContext validateIntegrity(Insertable<Tag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('is_negative')) {
      context.handle(
          _isNegativeMeta,
          isNegative.isAcceptableOrUnknown(
              data['is_negative']!, _isNegativeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tagId};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Tag.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(_db, alias);
  }
}

class Mood extends DataClass implements Insertable<Mood> {
  final int moodId;
  final int userId;
  final String description;
  final String title;
  final int level;
  final DateTime dateCreated;
  final int? color;
  final String? habitIds;
  final String? icon;
  final String? positiveTagsIds;
  final String? negativeTagsIds;
  final double? duration;
  final DateTime? dateEnded;
  final DateTime? dateChanged;
  final int moodCount;
  Mood(
      {required this.moodId,
      required this.userId,
      required this.description,
      required this.title,
      required this.level,
      required this.dateCreated,
      this.color,
      this.habitIds,
      this.icon,
      this.positiveTagsIds,
      this.negativeTagsIds,
      this.duration,
      this.dateEnded,
      this.dateChanged,
      required this.moodCount});
  factory Mood.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Mood(
      moodId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mood_id'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      level: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}level'])!,
      dateCreated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_created'])!,
      color: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color']),
      habitIds: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}habit_ids']),
      icon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon']),
      positiveTagsIds: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}positive_tags_ids']),
      negativeTagsIds: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}negative_tags_ids']),
      duration: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}duration']),
      dateEnded: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_ended']),
      dateChanged: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_changed']),
      moodCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mood_count'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['mood_id'] = Variable<int>(moodId);
    map['user_id'] = Variable<int>(userId);
    map['description'] = Variable<String>(description);
    map['title'] = Variable<String>(title);
    map['level'] = Variable<int>(level);
    map['date_created'] = Variable<DateTime>(dateCreated);
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<int?>(color);
    }
    if (!nullToAbsent || habitIds != null) {
      map['habit_ids'] = Variable<String?>(habitIds);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String?>(icon);
    }
    if (!nullToAbsent || positiveTagsIds != null) {
      map['positive_tags_ids'] = Variable<String?>(positiveTagsIds);
    }
    if (!nullToAbsent || negativeTagsIds != null) {
      map['negative_tags_ids'] = Variable<String?>(negativeTagsIds);
    }
    if (!nullToAbsent || duration != null) {
      map['duration'] = Variable<double?>(duration);
    }
    if (!nullToAbsent || dateEnded != null) {
      map['date_ended'] = Variable<DateTime?>(dateEnded);
    }
    if (!nullToAbsent || dateChanged != null) {
      map['date_changed'] = Variable<DateTime?>(dateChanged);
    }
    map['mood_count'] = Variable<int>(moodCount);
    return map;
  }

  MoodsCompanion toCompanion(bool nullToAbsent) {
    return MoodsCompanion(
      moodId: Value(moodId),
      userId: Value(userId),
      description: Value(description),
      title: Value(title),
      level: Value(level),
      dateCreated: Value(dateCreated),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      habitIds: habitIds == null && nullToAbsent
          ? const Value.absent()
          : Value(habitIds),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      positiveTagsIds: positiveTagsIds == null && nullToAbsent
          ? const Value.absent()
          : Value(positiveTagsIds),
      negativeTagsIds: negativeTagsIds == null && nullToAbsent
          ? const Value.absent()
          : Value(negativeTagsIds),
      duration: duration == null && nullToAbsent
          ? const Value.absent()
          : Value(duration),
      dateEnded: dateEnded == null && nullToAbsent
          ? const Value.absent()
          : Value(dateEnded),
      dateChanged: dateChanged == null && nullToAbsent
          ? const Value.absent()
          : Value(dateChanged),
      moodCount: Value(moodCount),
    );
  }

  factory Mood.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Mood(
      moodId: serializer.fromJson<int>(json['moodId']),
      userId: serializer.fromJson<int>(json['userId']),
      description: serializer.fromJson<String>(json['description']),
      title: serializer.fromJson<String>(json['title']),
      level: serializer.fromJson<int>(json['level']),
      dateCreated: serializer.fromJson<DateTime>(json['dateCreated']),
      color: serializer.fromJson<int?>(json['color']),
      habitIds: serializer.fromJson<String?>(json['habitIds']),
      icon: serializer.fromJson<String?>(json['icon']),
      positiveTagsIds: serializer.fromJson<String?>(json['positiveTagsIds']),
      negativeTagsIds: serializer.fromJson<String?>(json['negativeTagsIds']),
      duration: serializer.fromJson<double?>(json['duration']),
      dateEnded: serializer.fromJson<DateTime?>(json['dateEnded']),
      dateChanged: serializer.fromJson<DateTime?>(json['dateChanged']),
      moodCount: serializer.fromJson<int>(json['moodCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'moodId': serializer.toJson<int>(moodId),
      'userId': serializer.toJson<int>(userId),
      'description': serializer.toJson<String>(description),
      'title': serializer.toJson<String>(title),
      'level': serializer.toJson<int>(level),
      'dateCreated': serializer.toJson<DateTime>(dateCreated),
      'color': serializer.toJson<int?>(color),
      'habitIds': serializer.toJson<String?>(habitIds),
      'icon': serializer.toJson<String?>(icon),
      'positiveTagsIds': serializer.toJson<String?>(positiveTagsIds),
      'negativeTagsIds': serializer.toJson<String?>(negativeTagsIds),
      'duration': serializer.toJson<double?>(duration),
      'dateEnded': serializer.toJson<DateTime?>(dateEnded),
      'dateChanged': serializer.toJson<DateTime?>(dateChanged),
      'moodCount': serializer.toJson<int>(moodCount),
    };
  }

  Mood copyWith(
          {int? moodId,
          int? userId,
          String? description,
          String? title,
          int? level,
          DateTime? dateCreated,
          int? color,
          String? habitIds,
          String? icon,
          String? positiveTagsIds,
          String? negativeTagsIds,
          double? duration,
          DateTime? dateEnded,
          DateTime? dateChanged,
          int? moodCount}) =>
      Mood(
        moodId: moodId ?? this.moodId,
        userId: userId ?? this.userId,
        description: description ?? this.description,
        title: title ?? this.title,
        level: level ?? this.level,
        dateCreated: dateCreated ?? this.dateCreated,
        color: color ?? this.color,
        habitIds: habitIds ?? this.habitIds,
        icon: icon ?? this.icon,
        positiveTagsIds: positiveTagsIds ?? this.positiveTagsIds,
        negativeTagsIds: negativeTagsIds ?? this.negativeTagsIds,
        duration: duration ?? this.duration,
        dateEnded: dateEnded ?? this.dateEnded,
        dateChanged: dateChanged ?? this.dateChanged,
        moodCount: moodCount ?? this.moodCount,
      );
  @override
  String toString() {
    return (StringBuffer('Mood(')
          ..write('moodId: $moodId, ')
          ..write('userId: $userId, ')
          ..write('description: $description, ')
          ..write('title: $title, ')
          ..write('level: $level, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('color: $color, ')
          ..write('habitIds: $habitIds, ')
          ..write('icon: $icon, ')
          ..write('positiveTagsIds: $positiveTagsIds, ')
          ..write('negativeTagsIds: $negativeTagsIds, ')
          ..write('duration: $duration, ')
          ..write('dateEnded: $dateEnded, ')
          ..write('dateChanged: $dateChanged, ')
          ..write('moodCount: $moodCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      moodId,
      userId,
      description,
      title,
      level,
      dateCreated,
      color,
      habitIds,
      icon,
      positiveTagsIds,
      negativeTagsIds,
      duration,
      dateEnded,
      dateChanged,
      moodCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Mood &&
          other.moodId == this.moodId &&
          other.userId == this.userId &&
          other.description == this.description &&
          other.title == this.title &&
          other.level == this.level &&
          other.dateCreated == this.dateCreated &&
          other.color == this.color &&
          other.habitIds == this.habitIds &&
          other.icon == this.icon &&
          other.positiveTagsIds == this.positiveTagsIds &&
          other.negativeTagsIds == this.negativeTagsIds &&
          other.duration == this.duration &&
          other.dateEnded == this.dateEnded &&
          other.dateChanged == this.dateChanged &&
          other.moodCount == this.moodCount);
}

class MoodsCompanion extends UpdateCompanion<Mood> {
  final Value<int> moodId;
  final Value<int> userId;
  final Value<String> description;
  final Value<String> title;
  final Value<int> level;
  final Value<DateTime> dateCreated;
  final Value<int?> color;
  final Value<String?> habitIds;
  final Value<String?> icon;
  final Value<String?> positiveTagsIds;
  final Value<String?> negativeTagsIds;
  final Value<double?> duration;
  final Value<DateTime?> dateEnded;
  final Value<DateTime?> dateChanged;
  final Value<int> moodCount;
  const MoodsCompanion({
    this.moodId = const Value.absent(),
    this.userId = const Value.absent(),
    this.description = const Value.absent(),
    this.title = const Value.absent(),
    this.level = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.color = const Value.absent(),
    this.habitIds = const Value.absent(),
    this.icon = const Value.absent(),
    this.positiveTagsIds = const Value.absent(),
    this.negativeTagsIds = const Value.absent(),
    this.duration = const Value.absent(),
    this.dateEnded = const Value.absent(),
    this.dateChanged = const Value.absent(),
    this.moodCount = const Value.absent(),
  });
  MoodsCompanion.insert({
    this.moodId = const Value.absent(),
    required int userId,
    required String description,
    required String title,
    this.level = const Value.absent(),
    required DateTime dateCreated,
    this.color = const Value.absent(),
    this.habitIds = const Value.absent(),
    this.icon = const Value.absent(),
    this.positiveTagsIds = const Value.absent(),
    this.negativeTagsIds = const Value.absent(),
    this.duration = const Value.absent(),
    this.dateEnded = const Value.absent(),
    this.dateChanged = const Value.absent(),
    this.moodCount = const Value.absent(),
  })  : userId = Value(userId),
        description = Value(description),
        title = Value(title),
        dateCreated = Value(dateCreated);
  static Insertable<Mood> custom({
    Expression<int>? moodId,
    Expression<int>? userId,
    Expression<String>? description,
    Expression<String>? title,
    Expression<int>? level,
    Expression<DateTime>? dateCreated,
    Expression<int?>? color,
    Expression<String?>? habitIds,
    Expression<String?>? icon,
    Expression<String?>? positiveTagsIds,
    Expression<String?>? negativeTagsIds,
    Expression<double?>? duration,
    Expression<DateTime?>? dateEnded,
    Expression<DateTime?>? dateChanged,
    Expression<int>? moodCount,
  }) {
    return RawValuesInsertable({
      if (moodId != null) 'mood_id': moodId,
      if (userId != null) 'user_id': userId,
      if (description != null) 'description': description,
      if (title != null) 'title': title,
      if (level != null) 'level': level,
      if (dateCreated != null) 'date_created': dateCreated,
      if (color != null) 'color': color,
      if (habitIds != null) 'habit_ids': habitIds,
      if (icon != null) 'icon': icon,
      if (positiveTagsIds != null) 'positive_tags_ids': positiveTagsIds,
      if (negativeTagsIds != null) 'negative_tags_ids': negativeTagsIds,
      if (duration != null) 'duration': duration,
      if (dateEnded != null) 'date_ended': dateEnded,
      if (dateChanged != null) 'date_changed': dateChanged,
      if (moodCount != null) 'mood_count': moodCount,
    });
  }

  MoodsCompanion copyWith(
      {Value<int>? moodId,
      Value<int>? userId,
      Value<String>? description,
      Value<String>? title,
      Value<int>? level,
      Value<DateTime>? dateCreated,
      Value<int?>? color,
      Value<String?>? habitIds,
      Value<String?>? icon,
      Value<String?>? positiveTagsIds,
      Value<String?>? negativeTagsIds,
      Value<double?>? duration,
      Value<DateTime?>? dateEnded,
      Value<DateTime?>? dateChanged,
      Value<int>? moodCount}) {
    return MoodsCompanion(
      moodId: moodId ?? this.moodId,
      userId: userId ?? this.userId,
      description: description ?? this.description,
      title: title ?? this.title,
      level: level ?? this.level,
      dateCreated: dateCreated ?? this.dateCreated,
      color: color ?? this.color,
      habitIds: habitIds ?? this.habitIds,
      icon: icon ?? this.icon,
      positiveTagsIds: positiveTagsIds ?? this.positiveTagsIds,
      negativeTagsIds: negativeTagsIds ?? this.negativeTagsIds,
      duration: duration ?? this.duration,
      dateEnded: dateEnded ?? this.dateEnded,
      dateChanged: dateChanged ?? this.dateChanged,
      moodCount: moodCount ?? this.moodCount,
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
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    if (color.present) {
      map['color'] = Variable<int?>(color.value);
    }
    if (habitIds.present) {
      map['habit_ids'] = Variable<String?>(habitIds.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String?>(icon.value);
    }
    if (positiveTagsIds.present) {
      map['positive_tags_ids'] = Variable<String?>(positiveTagsIds.value);
    }
    if (negativeTagsIds.present) {
      map['negative_tags_ids'] = Variable<String?>(negativeTagsIds.value);
    }
    if (duration.present) {
      map['duration'] = Variable<double?>(duration.value);
    }
    if (dateEnded.present) {
      map['date_ended'] = Variable<DateTime?>(dateEnded.value);
    }
    if (dateChanged.present) {
      map['date_changed'] = Variable<DateTime?>(dateChanged.value);
    }
    if (moodCount.present) {
      map['mood_count'] = Variable<int>(moodCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoodsCompanion(')
          ..write('moodId: $moodId, ')
          ..write('userId: $userId, ')
          ..write('description: $description, ')
          ..write('title: $title, ')
          ..write('level: $level, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('color: $color, ')
          ..write('habitIds: $habitIds, ')
          ..write('icon: $icon, ')
          ..write('positiveTagsIds: $positiveTagsIds, ')
          ..write('negativeTagsIds: $negativeTagsIds, ')
          ..write('duration: $duration, ')
          ..write('dateEnded: $dateEnded, ')
          ..write('dateChanged: $dateChanged, ')
          ..write('moodCount: $moodCount')
          ..write(')'))
        .toString();
  }
}

class $MoodsTable extends Moods with TableInfo<$MoodsTable, Mood> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MoodsTable(this._db, [this._alias]);
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _levelMeta = const VerificationMeta('level');
  late final GeneratedColumn<int?> level = GeneratedColumn<int?>(
      'level', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: const Constant(5));
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  late final GeneratedColumn<DateTime?> dateCreated =
      GeneratedColumn<DateTime?>('date_created', aliasedName, false,
          typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  late final GeneratedColumn<int?> color = GeneratedColumn<int?>(
      'color', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _habitIdsMeta = const VerificationMeta('habitIds');
  late final GeneratedColumn<String?> habitIds = GeneratedColumn<String?>(
      'habit_ids', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  late final GeneratedColumn<String?> icon = GeneratedColumn<String?>(
      'icon', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _positiveTagsIdsMeta =
      const VerificationMeta('positiveTagsIds');
  late final GeneratedColumn<String?> positiveTagsIds =
      GeneratedColumn<String?>('positive_tags_ids', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _negativeTagsIdsMeta =
      const VerificationMeta('negativeTagsIds');
  late final GeneratedColumn<String?> negativeTagsIds =
      GeneratedColumn<String?>('negative_tags_ids', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _durationMeta = const VerificationMeta('duration');
  late final GeneratedColumn<double?> duration = GeneratedColumn<double?>(
      'duration', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false);
  final VerificationMeta _dateEndedMeta = const VerificationMeta('dateEnded');
  late final GeneratedColumn<DateTime?> dateEnded = GeneratedColumn<DateTime?>(
      'date_ended', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _dateChangedMeta =
      const VerificationMeta('dateChanged');
  late final GeneratedColumn<DateTime?> dateChanged =
      GeneratedColumn<DateTime?>('date_changed', aliasedName, true,
          typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _moodCountMeta = const VerificationMeta('moodCount');
  late final GeneratedColumn<int?> moodCount = GeneratedColumn<int?>(
      'mood_count', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns => [
        moodId,
        userId,
        description,
        title,
        level,
        dateCreated,
        color,
        habitIds,
        icon,
        positiveTagsIds,
        negativeTagsIds,
        duration,
        dateEnded,
        dateChanged,
        moodCount
      ];
  @override
  String get aliasedName => _alias ?? 'moods';
  @override
  String get actualTableName => 'moods';
  @override
  VerificationContext validateIntegrity(Insertable<Mood> instance,
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    } else if (isInserting) {
      context.missing(_dateCreatedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('habit_ids')) {
      context.handle(_habitIdsMeta,
          habitIds.isAcceptableOrUnknown(data['habit_ids']!, _habitIdsMeta));
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    }
    if (data.containsKey('positive_tags_ids')) {
      context.handle(
          _positiveTagsIdsMeta,
          positiveTagsIds.isAcceptableOrUnknown(
              data['positive_tags_ids']!, _positiveTagsIdsMeta));
    }
    if (data.containsKey('negative_tags_ids')) {
      context.handle(
          _negativeTagsIdsMeta,
          negativeTagsIds.isAcceptableOrUnknown(
              data['negative_tags_ids']!, _negativeTagsIdsMeta));
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    }
    if (data.containsKey('date_ended')) {
      context.handle(_dateEndedMeta,
          dateEnded.isAcceptableOrUnknown(data['date_ended']!, _dateEndedMeta));
    }
    if (data.containsKey('date_changed')) {
      context.handle(
          _dateChangedMeta,
          dateChanged.isAcceptableOrUnknown(
              data['date_changed']!, _dateChangedMeta));
    }
    if (data.containsKey('mood_count')) {
      context.handle(_moodCountMeta,
          moodCount.isAcceptableOrUnknown(data['mood_count']!, _moodCountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {moodId};
  @override
  Mood map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Mood.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoodsTable createAlias(String alias) {
    return $MoodsTable(_db, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int userId;
  final String username;
  final String password;
  final String name;
  final String email;
  final DateTime? dateCreated;
  final DateTime? lastLogin;
  User(
      {required this.userId,
      required this.username,
      required this.password,
      required this.name,
      required this.email,
      this.dateCreated,
      this.lastLogin});
  factory User.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
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

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
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

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
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

  User copyWith(
          {int? userId,
          String? username,
          String? password,
          String? name,
          String? email,
          DateTime? dateCreated,
          DateTime? lastLogin}) =>
      User(
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
    return (StringBuffer('User(')
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
      (other is User &&
          other.userId == this.userId &&
          other.username == this.username &&
          other.password == this.password &&
          other.name == this.name &&
          other.email == this.email &&
          other.dateCreated == this.dateCreated &&
          other.lastLogin == this.lastLogin);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> userId;
  final Value<String> username;
  final Value<String> password;
  final Value<String> name;
  final Value<String> email;
  final Value<DateTime?> dateCreated;
  final Value<DateTime?> lastLogin;
  const UsersCompanion({
    this.userId = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.lastLogin = const Value.absent(),
  });
  UsersCompanion.insert({
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
  static Insertable<User> custom({
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

  UsersCompanion copyWith(
      {Value<int>? userId,
      Value<String>? username,
      Value<String>? password,
      Value<String>? name,
      Value<String>? email,
      Value<DateTime?>? dateCreated,
      Value<DateTime?>? lastLogin}) {
    return UsersCompanion(
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
    return (StringBuffer('UsersCompanion(')
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

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UsersTable(this._db, [this._alias]);
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
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
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
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class Habit extends DataClass implements Insertable<Habit> {
  final int habitId;
  final int userId;
  final String habitName;
  final String priority;
  final int? repeatEvery;
  final bool notify;
  final DateTime startDate;
  final DateTime? endDate;
  final DateTime? notifyTime;
  Habit(
      {required this.habitId,
      required this.userId,
      required this.habitName,
      required this.priority,
      this.repeatEvery,
      required this.notify,
      required this.startDate,
      this.endDate,
      this.notifyTime});
  factory Habit.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Habit(
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

  HabitsCompanion toCompanion(bool nullToAbsent) {
    return HabitsCompanion(
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

  factory Habit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Habit(
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

  Habit copyWith(
          {int? habitId,
          int? userId,
          String? habitName,
          String? priority,
          int? repeatEvery,
          bool? notify,
          DateTime? startDate,
          DateTime? endDate,
          DateTime? notifyTime}) =>
      Habit(
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
    return (StringBuffer('Habit(')
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
      (other is Habit &&
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

class HabitsCompanion extends UpdateCompanion<Habit> {
  final Value<int> habitId;
  final Value<int> userId;
  final Value<String> habitName;
  final Value<String> priority;
  final Value<int?> repeatEvery;
  final Value<bool> notify;
  final Value<DateTime> startDate;
  final Value<DateTime?> endDate;
  final Value<DateTime?> notifyTime;
  const HabitsCompanion({
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
  HabitsCompanion.insert({
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
  static Insertable<Habit> custom({
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

  HabitsCompanion copyWith(
      {Value<int>? habitId,
      Value<int>? userId,
      Value<String>? habitName,
      Value<String>? priority,
      Value<int?>? repeatEvery,
      Value<bool>? notify,
      Value<DateTime>? startDate,
      Value<DateTime?>? endDate,
      Value<DateTime?>? notifyTime}) {
    return HabitsCompanion(
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
    return (StringBuffer('HabitsCompanion(')
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

class $HabitsTable extends Habits with TableInfo<$HabitsTable, Habit> {
  final GeneratedDatabase _db;
  final String? _alias;
  $HabitsTable(this._db, [this._alias]);
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
  String get aliasedName => _alias ?? 'habits';
  @override
  String get actualTableName => 'habits';
  @override
  VerificationContext validateIntegrity(Insertable<Habit> instance,
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
  Habit map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Habit.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HabitsTable createAlias(String alias) {
    return $HabitsTable(_db, alias);
  }
}

abstract class _$MelodyDB extends GeneratedDatabase {
  _$MelodyDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TagsTable tags = $TagsTable(this);
  late final $MoodsTable moods = $MoodsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $HabitsTable habits = $HabitsTable(this);
  late final UserDao userDao = UserDao(this as MelodyDB);
  late final MoodDao moodDao = MoodDao(this as MelodyDB);
  Selectable<Mood> getMoodsWhere(Expression<bool?> clause) {
    final generatedclause = $write(clause);
    return customSelect('SELECT *\nFROM moods\nWHERE ${generatedclause.sql}',
        variables: [
          ...generatedclause.introducedVariables
        ],
        readsFrom: {
          moods,
          ...generatedclause.watchedTables,
        }).map(moods.mapFromRow);
  }

  Selectable<Tag> moodsGetPositiveTags(int moodID) {
    return customSelect(
        'SELECT \n    t.tag_id,\n    t.user_id,\n    t.title,\n    t.is_negative\nFROM tags t\nINNER JOIN moods m \nON \n    m.mood_id = :moodID \nWHERE\n    t.tag_id IN (m.positive_tags_ids)\nAND t.user_id = m.user_id',
        variables: [
          Variable<int>(moodID)
        ],
        readsFrom: {
          tags,
          moods,
        }).map(tags.mapFromRow);
  }

  Selectable<Tag> moodsGetNegativeTags(int moodID) {
    return customSelect(
        'SELECT \n    t.tag_id,\n    t.user_id,\n    t.title,\n    t.is_negative\nFROM tags t\nINNER JOIN moods m \nON \n    m.mood_id = :moodID \nWHERE\n    t.tag_id IN (m.negative_tags_ids)\nAND t.user_id = m.user_id',
        variables: [
          Variable<int>(moodID)
        ],
        readsFrom: {
          tags,
          moods,
        }).map(tags.mapFromRow);
  }

  Future<int> moodUpdateCountsAdd(String moodName) {
    return customUpdate(
      'UPDATE moods \nSET mood_count = mood_count + 1 \nWHERE title = :moodName',
      variables: [Variable<String>(moodName)],
      updates: {moods},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> moodUpdateCountsSub(String moodName) {
    return customUpdate(
      'UPDATE moods \nSET mood_count = mood_count - 1 \nWHERE title = :moodName',
      variables: [Variable<String>(moodName)],
      updates: {moods},
      updateKind: UpdateKind.update,
    );
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [tags, moods, users, habits];
}
