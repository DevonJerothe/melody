import 'dart:math';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart' as getx;
import '../models/models.dart';
import 'auth_controller.dart';
import '../db/database.dart';

class MoodsController extends getx.GetxController {
  static MoodsController get to => getx.Get.find();

  MelodyDB db = getx.Get.find();

  final moods = getx.Rx<List<MoodItem>>([]);
  final showButton = getx.Rx<bool>(true);
  final currentDate = getx.Rx<DateTime>(DateTime.now());

  ScrollController scrollController = ScrollController();
  AnimationController? animationController;

  double currentPosition = 0.0;

  @override
  Future<void> onInit() async {
    getMoods(currentDate.value);
    scrollController.addListener(_onScroll);
    super.onInit();
  }

  void _onScroll() {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;
    if(currentScroll > 0 && (currentScroll < currentPosition)){
      showButton.value = true;
    }
    if (currentScroll < maxScroll && (currentScroll > currentPosition + 5)) {
      showButton.value = false;
    }
    if(currentScroll <= maxScroll){
      currentPosition = currentScroll;
    }
  }


  Future createMock() async {
    //For now create a mock mood for testing purposes
    final userID = AuthController.to.currUser.value!.userId;
    var dateCreated = DateTime(
      currentDate.value.year,
      currentDate.value.month,
      currentDate.value.day,
      DateTime.now().hour,
      DateTime.now().minute,
      DateTime.now().second,
    );

    var tag1 = await db.moodDao.insertTag(TagsCompanion(
      userId: Value(userID),
      title: const Value("Happy"),
    ));
    var tag2 = db.moodDao.insertTag(TagsCompanion(
      userId: Value(userID),
      title: const Value("Great"),
    ));
    var tag3 = db.moodDao.insertTag(TagsCompanion(
      userId: Value(userID),
      title: const Value("Great"),
    ));

    dateCreated = DateTime(
      currentDate.value.year,
      currentDate.value.month,
      currentDate.value.day,
      DateTime.now().hour,
      DateTime.now().minute,
      DateTime.now().second,
    );
    var mockMood2 = MoodsCompanion(
        userId: Value(userID),
        title: const Value("Impressed"),
        description: const Value(
            "I am very tired but also very pleased with the amount of progress I made"),
        color: Value(Colors.primaries[Random().nextInt(Colors.accents.length)]
            .withAlpha(100)
            .value),
        dateCreated: Value(dateCreated));
    await db.moodDao.insertMood(mockMood2);

    getMoods(currentDate.value);
  }

  Future createMood() async {}

  Future updateMood(String id) async {}

  Future getMoods(DateTime date) async {
    showButton.value = true;
    currentDate.value = date;
    moods.value = await db.moodDao.getMoods(currentDate.value.toUtc());
  }

  Future getRecentMoods() async {}
}
