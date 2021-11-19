part of 'models.dart';

@freezed
class MoodItem with _$MoodItem {
  const MoodItem._();

  @JsonSerializable(explicitToJson: true)
  const factory MoodItem(
      {required int moodId,
      required int userId,
      required String description,
      required String title,
      required DateTime dateCreated,
      required int color,
      int? moodCount,
      String? icon,
      double? duration,
      List<String>? habitIds,
      List<TagItem>? positiveTags,
      List<TagItem>? negativeTags,
      DateTime? dateEnded,
      DateTime? dateChanged}) = _MoodItem;

  factory MoodItem.fromJson(Map<String, dynamic> json) =>
      _$MoodItemFromJson(json);

  // factory MoodItem.getMood(int id) {
  //   MelodyDB db = Get.find();
  //   return db.moodDao.getMood(id);
  // }

  void getTags(bool positive, {bool negative = false}) async {
    MelodyDB db = Get.find();
    List<TagItem>? pTags = positiveTags;
    List<TagItem>? nTags = negativeTags;
    if (positive) {
      pTags = await db
          .moodsGetPositiveTags(moodId)
          .map((t) => TagItem.fromJson(t.toJson()))
          .get();
    }
    if (negative) {
      nTags = await db
          .moodsGetNegativeTags(moodId)
          .map((t) => TagItem.fromJson(t.toJson()))
          .get();
    }
    copyWith(positiveTags: pTags, negativeTags: nTags);
  }
}
