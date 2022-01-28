part of 'models.dart';

@freezed
class TagItem with _$TagItem {
  const TagItem._();

  const factory TagItem(
      {required int tagId,
      required int userId,
      required String title,
      required bool isNegative}) = _TagItem;

  factory TagItem.fromJson(Map<String, dynamic> json) =>
      _$TagItemFromJson(json);
}
