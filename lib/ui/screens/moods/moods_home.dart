import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melody/ui/screens/moods/components/mood_tile.dart';
import '../../../data/controllers/moods_controller.dart';
import '../components/reusables.dart';
//import 'moods_create_new.dart';
import '../../../utils/size_config.dart';

class MoodsHome extends GetView<MoodsController> {
  const MoodsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SafeArea(
          child: Container(
              width: SizeConfig.blockSizeHorizontal! * 100,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: CalendarTimeline(
                leftMargin: 0,
                initialDate: DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                ),
                firstDate: DateTime(DateTime.now().year - 1, 1, 1),
                lastDate: DateTime.now(),
                onDateSelected: (date) {
                  controller.getMoods(date!.add(Duration(
                    hours: DateTime.now().hour,
                    minutes: DateTime.now().minute,
                  )));
                },
                dotsColor: Colors.transparent,
                locale: 'en',
              )),
        ),
        const Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              controller.createMood();
            }),
        Expanded(child: GetX<MoodsController>(builder: (_) {
          if (controller.moods.value.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    'Looks like nothings here!\nTry tracking a new Mood'),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    controller.createMood();
                    //Get.to(const CreateMood());
                  },
                  child: ContainerCard(
                    width: SizeConfig.blockSizeHorizontal! * 50,
                    height: SizeConfig.blockSizeVertical! * 5,
                    color: Colors.blue.shade400,
                    radius: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Add Mood',
                            //textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                )
              ],
            );
          }
          return Scrollbar(
            child: MediaQuery.removePadding(
              context: Get.context!,
              removeTop: true,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.moods.value.length,
                  itemBuilder: (context, index) {
                    return MoodTile(mood: controller.moods.value[index]);
                  }),
            ),
          );
        }))
      ],
    );
  }
}
