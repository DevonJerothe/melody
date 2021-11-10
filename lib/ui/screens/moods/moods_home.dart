import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/controllers/moods_controller.dart';
import '../components/reusables.dart';
import 'moods_create_new.dart';
import '../../../utils/size_config.dart';

class MoodsHome extends GetView<MoodsController> {
  const MoodsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: SizeConfig.blockSizeHorizontal! * 100,
            margin: const EdgeInsets.fromLTRB(10, 45, 10, 0),
            child: CalendarTimeline(
              leftMargin: 0,
              initialDate: controller.currentDate.value,
              firstDate: DateTime(DateTime.now().year - 1, 1, 1),
              lastDate: controller.currentDate.value,
              onDateSelected: (date) => controller.getMoods(date!),
              dotsColor: Colors.transparent,
              locale: 'en',
            )),
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
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.moods.value.length,
                itemBuilder: (context, index) {
                  return ContainerCard(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    margin: const EdgeInsets.fromLTRB(15, 0, 15, 5),
                    height: SizeConfig.blockSizeVertical! * 15,
                    width: SizeConfig.blockSizeHorizontal! * 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(controller.moods.value[index].title),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                controller.moods.value[index].description,
                                maxLines: 4,
                                softWrap: true,
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'PlaceHolder',
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        Text(controller.moods.value[index].dateCreated
                            .toString())
                      ],
                    ),
                  );
                }),
          );
        }))
      ],
    );
  }
}
