import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melody/data/controllers/moods_controller.dart';
import 'package:melody/utils/size_config.dart';

class MoodsHome extends GetView<MoodsController> {
  MoodsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeConfig.blockSizeHorizontal! * 100,
          height: SizeConfig.blockSizeVertical! * 25,
          margin: const EdgeInsets.fromLTRB(10, 45, 10, 0),
          child: GetX<MoodsController>(
              //id: 'DatePickerTimeline',
              builder: (context) {
            return CalendarTimeline(
              leftMargin: 0,
              initialDate: controller.currentDate.value,
              firstDate: DateTime(DateTime.now().year - 1, 1, 1),
              lastDate: controller.currentDate.value,
              onDateSelected: (date) {},
              dotsColor: Colors.transparent,
              locale: 'en',
            );
          }),
        ),
        Expanded(
            child: GetBuilder<MoodsController>(
          id: 'MoodTimeline',
          builder: (_) {
            if (controller.moodTimeLineItems.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                        'Looks like nothings here!\nTry tracking a new Mood'),
                  ),
                  Container(
                    width: SizeConfig.blockSizeHorizontal! * 50,
                    height: SizeConfig.blockSizeVertical! * 5,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blueAccent)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Add Mood',
                            //textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  )
                ],
              );
            }
            return Container();
          },
        ))
      ],
    );
  }
}
