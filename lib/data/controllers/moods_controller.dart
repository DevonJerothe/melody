import 'dart:math';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart' as getx;
import 'auth_controller.dart';
import '../db/database.dart';

class MoodsController extends getx.GetxController {
  static MoodsController get to => getx.Get.find();

  MelodyDB db = getx.Get.find();

  final moods = getx.Rx<List<Moods>>([]);

  final currentDate = getx.Rx<DateTime>(DateTime.now());
  ScrollController scrollController = ScrollController();

  @override
  Future<void> onInit() async {
    getMoods(currentDate.value);
    super.onInit();
  }

  Future createMood() async {
    //For now create a mock mood for testing purposes
    final userID = AuthController.to.currUser.value!.userId;
    final dateCreated = DateTime(
      currentDate.value.year,
      currentDate.value.month,
      currentDate.value.day,
      DateTime.now().hour,
      DateTime.now().minute,
      DateTime.now().second,
    );
    var mockMood = MoodCompanion(
        userId: Value(userID),
        title: const Value("Excited"),
        description: const Value(
            "Melody is coming along well. I'm excited to see it continue development"),
        color: Value(
            Colors.primaries[Random().nextInt(Colors.primaries.length)].value),
        positiveTags:
            const Value("Happy,Excited,Good,Energetic,Coding,Computer"),
        dateCreated: Value(dateCreated));
    await db.moodDao.insertMood(mockMood);
    getMoods(currentDate.value);
  }

  Future updateMood(String id) async {}
  Future getMoods(DateTime date) async {
    currentDate.value = date;
    moods.value = await db.moodDao.getMoods(currentDate.value.toUtc());
  }

  Future getRecentMoods() async {}
}
