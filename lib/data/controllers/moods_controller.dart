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

  final currentDate = getx.Rx<DateTime>(DateTime.now());
  ScrollController scrollController = ScrollController();

  @override
  Future<void> onInit() async {
    getMoods(currentDate.value);
    super.onInit();
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

    var mockMood1 = MoodsCompanion(
        userId: Value(userID),
        title: const Value("Excited"),
        description: const Value(
            "Melody is coming along well. I'm excited to see it continue development"),
        color: Value(Colors.primaries[Random().nextInt(Colors.accents.length)]
            .withAlpha(100)
            .value),
        positiveTagsIds: Value('$tag1, $tag2, $tag3'),
        dateCreated: Value(dateCreated));
    await db.moodDao.insertMood(mockMood1);

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

    // dateCreated = DateTime(
    //   currentDate.value.year,
    //   currentDate.value.month,
    //   currentDate.value.day,
    //   DateTime.now().hour,
    //   DateTime.now().minute,
    //   DateTime.now().second,
    // );
    // var mockMood3 = MoodsCompanion(
    //     userId: Value(userID),
    //     title: const Value("Excited"),
    //     description: const Value(
    //         "I am loving my new Mac. While I did spend a lot of money, it has made me want to develope more apps!"),
    //     color: Value(Colors.primaries[Random().nextInt(Colors.accents.length)]
    //         .withAlpha(100)
    //         .value),
    //     positiveTagsIds: Value('$tag1, $tag2'),
    //     dateCreated: Value(dateCreated));
    // db.moodDao.insertMood(mockMood3);

    getMoods(currentDate.value);
  }

  Future createMood() async {}

  Future updateMood(String id) async {}

  Future getMoods(DateTime date) async {
    currentDate.value = date;
    moods.value = await db.moodDao.getMoods(currentDate.value.toUtc());
  }

  Future getRecentMoods() async {}
}
