// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoodItem _$$_MoodItemFromJson(Map<String, dynamic> json) => _$_MoodItem(
      moodId: json['moodId'] as int,
      userId: json['userId'] as int,
      description: json['description'] as String,
      title: json['title'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      color: json['color'] as int,
      level: json['level'] as int,
      moodCount: json['moodCount'] as int?,
      icon: json['icon'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      habitIds: (json['habitIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      positiveTags: (json['positiveTags'] as List<dynamic>?)
          ?.map((e) => TagItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      negativeTags: (json['negativeTags'] as List<dynamic>?)
          ?.map((e) => TagItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateEnded: json['dateEnded'] == null
          ? null
          : DateTime.parse(json['dateEnded'] as String),
      dateChanged: json['dateChanged'] == null
          ? null
          : DateTime.parse(json['dateChanged'] as String),
    );

Map<String, dynamic> _$$_MoodItemToJson(_$_MoodItem instance) =>
    <String, dynamic>{
      'moodId': instance.moodId,
      'userId': instance.userId,
      'description': instance.description,
      'title': instance.title,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'color': instance.color,
      'level': instance.level,
      'moodCount': instance.moodCount,
      'icon': instance.icon,
      'duration': instance.duration,
      'habitIds': instance.habitIds,
      'positiveTags': instance.positiveTags?.map((e) => e.toJson()).toList(),
      'negativeTags': instance.negativeTags?.map((e) => e.toJson()).toList(),
      'dateEnded': instance.dateEnded?.toIso8601String(),
      'dateChanged': instance.dateChanged?.toIso8601String(),
    };

_$_TagItem _$$_TagItemFromJson(Map<String, dynamic> json) => _$_TagItem(
      tagId: json['tagId'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      isNegative: json['isNegative'] as bool,
    );

Map<String, dynamic> _$$_TagItemToJson(_$_TagItem instance) =>
    <String, dynamic>{
      'tagId': instance.tagId,
      'userId': instance.userId,
      'title': instance.title,
      'isNegative': instance.isNegative,
    };
