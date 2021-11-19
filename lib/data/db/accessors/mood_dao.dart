part of 'daos.dart';

@DriftAccessor(tables: [Moods, Tags])
class MoodDao extends DatabaseAccessor<MelodyDB> with _$MoodDaoMixin {
  MoodDao(MelodyDB db) : super(db);

  Future<List<MoodItem>> getMoods(DateTime? date) async {
    date ??= DateTime.now();
    List<MoodItem> results = (await (select(moods)
          ..where((m) => m.dateCreated.day.equals(date!.day))
          ..where((m) => m.dateCreated.month.equals(date!.month))
          ..where((m) => m.dateCreated.year.equals(date!.year))
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.dateCreated, mode: OrderingMode.desc)
          ]))
        .map((m) {
      return MoodItem(
          moodId: m.moodId,
          userId: m.userId,
          description: m.description,
          title: m.title,
          dateCreated: m.dateCreated,
          color: m.color!,
          moodCount: m.moodCount,
          icon: m.icon,
          duration: m.duration,
          dateChanged: m.dateChanged,
          dateEnded: m.dateEnded);
    }).get());

    for (var mood in results) {
      mood.getTags(true);
    }

    return results;
  }

  Future<int?> insertMood(MoodsCompanion newMood) async {
    int? prevID = await getRecentMoodID(newMood.dateCreated.value);
    if (prevID != null) {
      await (update(moods)..where((m) => m.moodId.equals(prevID)))
          .write(MoodsCompanion(dateEnded: Value(DateTime.now().toUtc())));
    }
    int id = await into(moods).insert(newMood);
    db.moodUpdateCountsAdd(newMood.title.value);
    return id;
  }

  Future<int?> getRecentMoodID(DateTime date) async {
    int? lastMood = await (select(moods)
          ..where((m) => m.dateCreated.day.equals(date.day))
          ..where((m) => m.dateCreated.month.equals(date.month))
          ..where((m) => m.dateCreated.year.equals(date.year))
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.dateCreated, mode: OrderingMode.desc)
          ]))
        .map((m) => m.moodId)
        .getSingleOrNull();
    return lastMood;
  }

  Future<int?> insertTag(TagsCompanion newTag) async {
    int id = await into(tags).insert(newTag);
    return id;
  }
}
