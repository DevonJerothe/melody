import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melody/data/controllers/moods_controller.dart';
import 'package:melody/ui/screens/components/reusables.dart';
import 'package:melody/utils/size_config.dart';

class AddNewMoodBtn extends StatelessWidget {
  const AddNewMoodBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<MoodsController>(
      init: MoodsController(),
      builder: (controller) {
        return AnimatedPositioned(
          left: controller.moods.value.isEmpty
              ? SizeConfig.blockSizeHorizontal! * 25
              : SizeConfig.blockSizeHorizontal! * 2,
          top: controller.moods.value.isEmpty
              ? SizeConfig.blockSizeVertical! * 50
              : SizeConfig.blockSizeVertical! * 83,
          duration: const Duration(milliseconds: 100),
          child: AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            crossFadeState: controller.showButton.value
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
              return Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(key: bottomChildKey, top: 0, child: bottomChild),
                  Positioned(key: topChildKey, child: topChild)
                ],
              );
            },
            firstChild: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (controller.moods.value.isEmpty) ...[
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
                                width: controller.moods.value.isEmpty
                                    ? SizeConfig.blockSizeHorizontal! * 50
                                    : SizeConfig.blockSizeHorizontal! * 95,
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
                )),
            secondChild: SizedBox(
              height: 50,
              width: SizeConfig.blockSizeHorizontal! * 95,
            ),
          ),
        );
      }
    );
  }
}