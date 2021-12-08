import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melody/data/controllers/moods_controller.dart';
import 'package:melody/ui/screens/components/reusables.dart';
import 'package:melody/utils/size_config.dart';

class AddNewMoodBtn extends StatefulWidget {
  const AddNewMoodBtn({Key? key}) : super(key: key);

  @override
  State<AddNewMoodBtn> createState() => _AddNewMoodBtnState();
}

class _AddNewMoodBtnState extends State<AddNewMoodBtn>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    MoodsController.to.animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  // @override
  // void dispose() {
  //   MoodsController.to.animationController!.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return GetX<MoodsController>(
        builder: (controller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(controller.moods.value.isEmpty)...[
                const Text(
                    'Looks like nothings here!\nTry tracking a new Mood'),
                const SizedBox(
                  height: 25,
                ),
              ],
              GestureDetector(
                onTap: () {
                  MoodsController.to.createMock();
                  //Get.to(const CreateMood());
                },
                child: ContainerCard(
                  height: SizeConfig.blockSizeVertical! * 5,
                  color: Colors.blue.shade400,
                  radius: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedSize(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.linear,
                        child: SizedBox(
                          width: controller.moods.value.isEmpty ? SizeConfig.blockSizeHorizontal! * 50 : SizeConfig.blockSizeHorizontal! * 95,
                          child: const Center(
                            child: Text('Add Mood',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }
    );
  }
}
