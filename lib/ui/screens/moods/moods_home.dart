import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melody/ui/screens/moods/components/mood_add_new_button.dart';
import '../../../utils/formatters.dart';
import '../components/calendar_timeline.dart';
import 'components/mood_tile.dart';
import '../../../data/controllers/moods_controller.dart';
import '../components/reusables.dart';

//import 'moods_create_new.dart';
import '../../../utils/size_config.dart';

class MoodsHome extends StatelessWidget {
  const MoodsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.safeBlockVertical! * 100,
          color: Colors.blue,
        ),
        Positioned(
          top: SizeConfig.blockSizeVertical! * 6,
          width: SizeConfig.blockSizeHorizontal! * 100,
          child: const Text(
            'Moods',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          width: SizeConfig.blockSizeHorizontal! * 100,
          height: SizeConfig.safeBlockVertical! * 90,
          top: SizeConfig.blockSizeVertical! * 10,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CalendarTimelineView(
                    initialDate: DateTime.now(),
                    daysBack: 90,
                    onSelected: (date) => MoodsController.to.getMoods(date),
                  ),
                ),
                const Divider(
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                Expanded(
                  child: GetX<MoodsController>(
                    init: MoodsController(),
                    builder: (controller) {
                      if (controller.moods.value.isEmpty) {
                        return Container();
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                            child: Text(
                              formatDate(controller.currentDate.value,
                                  format: 'd MMM'),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: MediaQuery.removePadding(
                              context: Get.context!,
                              removeTop: true,
                              child: ListView.builder(
                                controller: controller.scrollController,
                                shrinkWrap: true,
                                itemCount: controller.moods.value.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(
                                        left: 12, right: 12),
                                    width:
                                        SizeConfig.blockSizeHorizontal! * 100,
                                    constraints: const BoxConstraints(
                                      maxHeight: double.infinity,
                                    ),
                                    child: MoodTile(
                                        mood: controller.moods.value[index],
                                        top: index == 0),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        const AddNewMoodBtn()
      ],
    );
  }
}
