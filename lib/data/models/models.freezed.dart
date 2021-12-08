// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoodItem _$MoodItemFromJson(Map<String, dynamic> json) {
  return _MoodItem.fromJson(json);
}

/// @nodoc
class _$MoodItemTearOff {
  const _$MoodItemTearOff();

  _MoodItem call(
      {required int moodId,
      required int userId,
      required String description,
      required String title,
      required DateTime dateCreated,
      required int color,
      required int level,
      int? moodCount,
      String? icon,
      double? duration,
      List<String>? habitIds,
      List<TagItem>? positiveTags,
      List<TagItem>? negativeTags,
      DateTime? dateEnded,
      DateTime? dateChanged}) {
    return _MoodItem(
      moodId: moodId,
      userId: userId,
      description: description,
      title: title,
      dateCreated: dateCreated,
      color: color,
      level: level,
      moodCount: moodCount,
      icon: icon,
      duration: duration,
      habitIds: habitIds,
      positiveTags: positiveTags,
      negativeTags: negativeTags,
      dateEnded: dateEnded,
      dateChanged: dateChanged,
    );
  }

  MoodItem fromJson(Map<String, Object?> json) {
    return MoodItem.fromJson(json);
  }
}

/// @nodoc
const $MoodItem = _$MoodItemTearOff();

/// @nodoc
mixin _$MoodItem {
  int get moodId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int? get moodCount => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  double? get duration => throw _privateConstructorUsedError;
  List<String>? get habitIds => throw _privateConstructorUsedError;
  List<TagItem>? get positiveTags => throw _privateConstructorUsedError;
  List<TagItem>? get negativeTags => throw _privateConstructorUsedError;
  DateTime? get dateEnded => throw _privateConstructorUsedError;
  DateTime? get dateChanged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoodItemCopyWith<MoodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodItemCopyWith<$Res> {
  factory $MoodItemCopyWith(MoodItem value, $Res Function(MoodItem) then) =
      _$MoodItemCopyWithImpl<$Res>;
  $Res call(
      {int moodId,
      int userId,
      String description,
      String title,
      DateTime dateCreated,
      int color,
      int level,
      int? moodCount,
      String? icon,
      double? duration,
      List<String>? habitIds,
      List<TagItem>? positiveTags,
      List<TagItem>? negativeTags,
      DateTime? dateEnded,
      DateTime? dateChanged});
}

/// @nodoc
class _$MoodItemCopyWithImpl<$Res> implements $MoodItemCopyWith<$Res> {
  _$MoodItemCopyWithImpl(this._value, this._then);

  final MoodItem _value;
  // ignore: unused_field
  final $Res Function(MoodItem) _then;

  @override
  $Res call({
    Object? moodId = freezed,
    Object? userId = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? dateCreated = freezed,
    Object? color = freezed,
    Object? level = freezed,
    Object? moodCount = freezed,
    Object? icon = freezed,
    Object? duration = freezed,
    Object? habitIds = freezed,
    Object? positiveTags = freezed,
    Object? negativeTags = freezed,
    Object? dateEnded = freezed,
    Object? dateChanged = freezed,
  }) {
    return _then(_value.copyWith(
      moodId: moodId == freezed
          ? _value.moodId
          : moodId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      moodCount: moodCount == freezed
          ? _value.moodCount
          : moodCount // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      habitIds: habitIds == freezed
          ? _value.habitIds
          : habitIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      positiveTags: positiveTags == freezed
          ? _value.positiveTags
          : positiveTags // ignore: cast_nullable_to_non_nullable
              as List<TagItem>?,
      negativeTags: negativeTags == freezed
          ? _value.negativeTags
          : negativeTags // ignore: cast_nullable_to_non_nullable
              as List<TagItem>?,
      dateEnded: dateEnded == freezed
          ? _value.dateEnded
          : dateEnded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateChanged: dateChanged == freezed
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MoodItemCopyWith<$Res> implements $MoodItemCopyWith<$Res> {
  factory _$MoodItemCopyWith(_MoodItem value, $Res Function(_MoodItem) then) =
      __$MoodItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int moodId,
      int userId,
      String description,
      String title,
      DateTime dateCreated,
      int color,
      int level,
      int? moodCount,
      String? icon,
      double? duration,
      List<String>? habitIds,
      List<TagItem>? positiveTags,
      List<TagItem>? negativeTags,
      DateTime? dateEnded,
      DateTime? dateChanged});
}

/// @nodoc
class __$MoodItemCopyWithImpl<$Res> extends _$MoodItemCopyWithImpl<$Res>
    implements _$MoodItemCopyWith<$Res> {
  __$MoodItemCopyWithImpl(_MoodItem _value, $Res Function(_MoodItem) _then)
      : super(_value, (v) => _then(v as _MoodItem));

  @override
  _MoodItem get _value => super._value as _MoodItem;

  @override
  $Res call({
    Object? moodId = freezed,
    Object? userId = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? dateCreated = freezed,
    Object? color = freezed,
    Object? level = freezed,
    Object? moodCount = freezed,
    Object? icon = freezed,
    Object? duration = freezed,
    Object? habitIds = freezed,
    Object? positiveTags = freezed,
    Object? negativeTags = freezed,
    Object? dateEnded = freezed,
    Object? dateChanged = freezed,
  }) {
    return _then(_MoodItem(
      moodId: moodId == freezed
          ? _value.moodId
          : moodId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      moodCount: moodCount == freezed
          ? _value.moodCount
          : moodCount // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      habitIds: habitIds == freezed
          ? _value.habitIds
          : habitIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      positiveTags: positiveTags == freezed
          ? _value.positiveTags
          : positiveTags // ignore: cast_nullable_to_non_nullable
              as List<TagItem>?,
      negativeTags: negativeTags == freezed
          ? _value.negativeTags
          : negativeTags // ignore: cast_nullable_to_non_nullable
              as List<TagItem>?,
      dateEnded: dateEnded == freezed
          ? _value.dateEnded
          : dateEnded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateChanged: dateChanged == freezed
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MoodItem extends _MoodItem {
  const _$_MoodItem(
      {required this.moodId,
      required this.userId,
      required this.description,
      required this.title,
      required this.dateCreated,
      required this.color,
      required this.level,
      this.moodCount,
      this.icon,
      this.duration,
      this.habitIds,
      this.positiveTags,
      this.negativeTags,
      this.dateEnded,
      this.dateChanged})
      : super._();

  factory _$_MoodItem.fromJson(Map<String, dynamic> json) =>
      _$$_MoodItemFromJson(json);

  @override
  final int moodId;
  @override
  final int userId;
  @override
  final String description;
  @override
  final String title;
  @override
  final DateTime dateCreated;
  @override
  final int color;
  @override
  final int level;
  @override
  final int? moodCount;
  @override
  final String? icon;
  @override
  final double? duration;
  @override
  final List<String>? habitIds;
  @override
  final List<TagItem>? positiveTags;
  @override
  final List<TagItem>? negativeTags;
  @override
  final DateTime? dateEnded;
  @override
  final DateTime? dateChanged;

  @override
  String toString() {
    return 'MoodItem(moodId: $moodId, userId: $userId, description: $description, title: $title, dateCreated: $dateCreated, color: $color, level: $level, moodCount: $moodCount, icon: $icon, duration: $duration, habitIds: $habitIds, positiveTags: $positiveTags, negativeTags: $negativeTags, dateEnded: $dateEnded, dateChanged: $dateChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoodItem &&
            (identical(other.moodId, moodId) || other.moodId == moodId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.moodCount, moodCount) ||
                other.moodCount == moodCount) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other.habitIds, habitIds) &&
            const DeepCollectionEquality()
                .equals(other.positiveTags, positiveTags) &&
            const DeepCollectionEquality()
                .equals(other.negativeTags, negativeTags) &&
            (identical(other.dateEnded, dateEnded) ||
                other.dateEnded == dateEnded) &&
            (identical(other.dateChanged, dateChanged) ||
                other.dateChanged == dateChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      moodId,
      userId,
      description,
      title,
      dateCreated,
      color,
      level,
      moodCount,
      icon,
      duration,
      const DeepCollectionEquality().hash(habitIds),
      const DeepCollectionEquality().hash(positiveTags),
      const DeepCollectionEquality().hash(negativeTags),
      dateEnded,
      dateChanged);

  @JsonKey(ignore: true)
  @override
  _$MoodItemCopyWith<_MoodItem> get copyWith =>
      __$MoodItemCopyWithImpl<_MoodItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoodItemToJson(this);
  }
}

abstract class _MoodItem extends MoodItem {
  const factory _MoodItem(
      {required int moodId,
      required int userId,
      required String description,
      required String title,
      required DateTime dateCreated,
      required int color,
      required int level,
      int? moodCount,
      String? icon,
      double? duration,
      List<String>? habitIds,
      List<TagItem>? positiveTags,
      List<TagItem>? negativeTags,
      DateTime? dateEnded,
      DateTime? dateChanged}) = _$_MoodItem;
  const _MoodItem._() : super._();

  factory _MoodItem.fromJson(Map<String, dynamic> json) = _$_MoodItem.fromJson;

  @override
  int get moodId;
  @override
  int get userId;
  @override
  String get description;
  @override
  String get title;
  @override
  DateTime get dateCreated;
  @override
  int get color;
  @override
  int get level;
  @override
  int? get moodCount;
  @override
  String? get icon;
  @override
  double? get duration;
  @override
  List<String>? get habitIds;
  @override
  List<TagItem>? get positiveTags;
  @override
  List<TagItem>? get negativeTags;
  @override
  DateTime? get dateEnded;
  @override
  DateTime? get dateChanged;
  @override
  @JsonKey(ignore: true)
  _$MoodItemCopyWith<_MoodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

TagItem _$TagItemFromJson(Map<String, dynamic> json) {
  return _TagItem.fromJson(json);
}

/// @nodoc
class _$TagItemTearOff {
  const _$TagItemTearOff();

  _TagItem call(
      {required int tagId,
      required int userId,
      required String title,
      required bool isNegative}) {
    return _TagItem(
      tagId: tagId,
      userId: userId,
      title: title,
      isNegative: isNegative,
    );
  }

  TagItem fromJson(Map<String, Object?> json) {
    return TagItem.fromJson(json);
  }
}

/// @nodoc
const $TagItem = _$TagItemTearOff();

/// @nodoc
mixin _$TagItem {
  int get tagId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isNegative => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagItemCopyWith<TagItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagItemCopyWith<$Res> {
  factory $TagItemCopyWith(TagItem value, $Res Function(TagItem) then) =
      _$TagItemCopyWithImpl<$Res>;
  $Res call({int tagId, int userId, String title, bool isNegative});
}

/// @nodoc
class _$TagItemCopyWithImpl<$Res> implements $TagItemCopyWith<$Res> {
  _$TagItemCopyWithImpl(this._value, this._then);

  final TagItem _value;
  // ignore: unused_field
  final $Res Function(TagItem) _then;

  @override
  $Res call({
    Object? tagId = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? isNegative = freezed,
  }) {
    return _then(_value.copyWith(
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isNegative: isNegative == freezed
          ? _value.isNegative
          : isNegative // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TagItemCopyWith<$Res> implements $TagItemCopyWith<$Res> {
  factory _$TagItemCopyWith(_TagItem value, $Res Function(_TagItem) then) =
      __$TagItemCopyWithImpl<$Res>;
  @override
  $Res call({int tagId, int userId, String title, bool isNegative});
}

/// @nodoc
class __$TagItemCopyWithImpl<$Res> extends _$TagItemCopyWithImpl<$Res>
    implements _$TagItemCopyWith<$Res> {
  __$TagItemCopyWithImpl(_TagItem _value, $Res Function(_TagItem) _then)
      : super(_value, (v) => _then(v as _TagItem));

  @override
  _TagItem get _value => super._value as _TagItem;

  @override
  $Res call({
    Object? tagId = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? isNegative = freezed,
  }) {
    return _then(_TagItem(
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isNegative: isNegative == freezed
          ? _value.isNegative
          : isNegative // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagItem extends _TagItem {
  const _$_TagItem(
      {required this.tagId,
      required this.userId,
      required this.title,
      required this.isNegative})
      : super._();

  factory _$_TagItem.fromJson(Map<String, dynamic> json) =>
      _$$_TagItemFromJson(json);

  @override
  final int tagId;
  @override
  final int userId;
  @override
  final String title;
  @override
  final bool isNegative;

  @override
  String toString() {
    return 'TagItem(tagId: $tagId, userId: $userId, title: $title, isNegative: $isNegative)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagItem &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isNegative, isNegative) ||
                other.isNegative == isNegative));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tagId, userId, title, isNegative);

  @JsonKey(ignore: true)
  @override
  _$TagItemCopyWith<_TagItem> get copyWith =>
      __$TagItemCopyWithImpl<_TagItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagItemToJson(this);
  }
}

abstract class _TagItem extends TagItem {
  const factory _TagItem(
      {required int tagId,
      required int userId,
      required String title,
      required bool isNegative}) = _$_TagItem;
  const _TagItem._() : super._();

  factory _TagItem.fromJson(Map<String, dynamic> json) = _$_TagItem.fromJson;

  @override
  int get tagId;
  @override
  int get userId;
  @override
  String get title;
  @override
  bool get isNegative;
  @override
  @JsonKey(ignore: true)
  _$TagItemCopyWith<_TagItem> get copyWith =>
      throw _privateConstructorUsedError;
}
