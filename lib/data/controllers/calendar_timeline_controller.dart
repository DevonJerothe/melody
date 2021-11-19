import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarTimelineController extends GetxController {
  CalendarTimelineController({required this.currentDate});

  static CalendarTimelineController get to => Get.find();

  DateTime currentDate;

  ScrollController scrollController = ScrollController();

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void stepMonth({bool back = false}) {
    if (back) {
      currentDate =
          DateTime(currentDate.year, currentDate.month - 1, currentDate.day);
    } else {
      currentDate =
          DateTime(currentDate.year, currentDate.month + 1, currentDate.day);
    }
    update();
  }

  void selectDate(DateTime date) {
    currentDate = date;
    update();
  }
}
