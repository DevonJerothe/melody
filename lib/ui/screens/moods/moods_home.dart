import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/formatters.dart';
import '../components/calendar_timeline.dart';
import 'components/mood_tile.dart';
import '../../../data/controllers/moods_controller.dart';
import '../components/reusables.dart';
//import 'moods_create_new.dart';
import '../../../utils/size_config.dart';

class MoodsHome extends StatelessWidget {
  MoodsHome({Key? key}) : super(key: key);

  MoodsController controller = Get.put(MoodsController());

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
                    onSelected: (date) => controller.getMoods(date),
                  ),
                ),
                const Divider(
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
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
                            controller.createMock();
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
                        child: Scrollbar(
                          child: MediaQuery.removePadding(
                            context: Get.context!,
                            removeTop: true,
                            child: ListView.builder(
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
                                }),
                          ),
                        ),
                      ),
                    ],
                  );
                })),
              ],
            ),
          ),
        )
      ],
    );
  }
}
