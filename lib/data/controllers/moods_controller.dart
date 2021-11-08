import 'package:flutter/widgets.dart';
import 'package:get/get.dart' as getx;
import '../db/database.dart';

class MoodsController extends getx.GetxController {
  static MoodsController get to => getx.Get.find();

  MelodyDB db = getx.Get.find();

  Map<DateTime, List<Moods>> moodTimeLineItems = <DateTime, List<Moods>>{};

  List<Moods> moods = [];
  List<Widget> moodTimeLine = [];

  final currentDate = getx.Rx<DateTime>(DateTime.now());
  ScrollController scrollController = ScrollController();

  @override
  Future<void> onInit() async {
    getMoods();
    super.onInit();
  }

  // Map<DateTime, List> getMoodsByDay(DateTime day) {
  //   if (moodTimeLineItems == null) {
  //     return {};
  //   }
  //   return Map.fromEntries(
  //     moodTimeLineItems.entries.where((entry) {
  //       if (DateTime(day.year, day.month, day.day) ==
  //           DateTime(entry.key.year, entry.key.month, entry.key.day)) {
  //         return true;
  //       }
  //       return false;
  //     }),
  //   );
  // }

  Future createMood() async {}
  Future updateMood(String id) async {}

  Future getMoods() async {}
  Future getRecentMoods() async {}
  void buildMoodTimeLine() {

  }
}
