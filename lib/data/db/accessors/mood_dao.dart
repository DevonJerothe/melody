import 'package:drift/drift.dart';
import '../database.dart';
import '../tables/tables.dart';

part 'mood_dao.g.dart';

@DriftAccessor(tables: [Mood])
class MoodDao extends DatabaseAccessor<MelodyDB> with _$MoodDaoMixin {
  MoodDao(MelodyDB db) : super(db);

  Future<int?> insertMood(MoodCompanion newMood) async {
    int id = await into(mood).insert(newMood);
    return id;
  }

  Future<List<Moods>> getMoods(DateTime? date) async {
    date ??= DateTime.now();
    List<Moods> test = await (select(mood)
          ..where((m) => m.dateCreated.day.equals(date!.day))
          ..where((m) => m.dateCreated.month.equals(date!.month))
          ..where((m) => m.dateCreated.year.equals(date!.year))
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.dateCreated, mode: OrderingMode.desc)
          ]))
        .get();
    return test;
  }
}
