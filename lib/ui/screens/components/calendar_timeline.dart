import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/controllers/calendar_timeline_controller.dart';
import '../../../utils/formatters.dart';
import '../../../utils/size_config.dart';

class CalendarTimelineView extends StatelessWidget {
  const CalendarTimelineView(
      {required this.initialDate,
      required this.daysBack,
      required this.onSelected,
      Key? key})
      : super(key: key);

  final DateTime initialDate;
  final int daysBack;
  final Function(DateTime) onSelected;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalendarTimelineController>(
        init: CalendarTimelineController(currentDate: initialDate),
        builder: (controller) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text(
                        formatDate(
                          controller.currentDate,
                          format: 'MMMM yyyy',
                        ),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: const Icon(Icons.arrow_back_ios_rounded),
                    onTap: () => controller.stepMonth(back: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: InkWell(
                      child: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () => controller.stepMonth(),
                    ),
                  ),
                  //InkWell()
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                padding: const EdgeInsets.all(2),
                height: SizeConfig.blockSizeVertical! * 8,
                width: SizeConfig.blockSizeHorizontal! * 100,
                child: ListView.builder(
                  reverse: true,
                  itemCount: daysBack,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    DateTime _date =
                        initialDate.subtract(Duration(days: index));
                    DateTime date = DateTime(
                        _date.year,
                        _date.month,
                        _date.day,
                        DateTime.now().hour,
                        DateTime.now().minute,
                        DateTime.now().second);
                    bool current = (date.year == controller.currentDate.year &&
                        date.month == controller.currentDate.month &&
                        date.day == controller.currentDate.day);
                    bool today = (date.year == DateTime.now().year &&
                        date.month == DateTime.now().month &&
                        date.day == DateTime.now().day);
                    // if (date.month != controller.currentDate.month) {
                    //   debugPrint(
                    //       'Month Changed: ' + formatDate(date, format: 'MMMM'));
                    // }
                    return InkWell(
                      onTap: () {
                        controller.selectDate(date);
                        onSelected(date);
                      },
                      child: Container(
                        width: 50,
                        margin: const EdgeInsets.only(left: 6, right: 6),
                        decoration: current
                            ? BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12))
                            : today
                                ? BoxDecoration(
                                    color: Colors.blue.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(12))
                                : null,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              formatDate(date, format: 'd'),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: current ? Colors.white : Colors.black),
                            ),
                            Text(
                              formatDate(date, format: 'E').substring(0, 1),
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: current ? Colors.white : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          );
        });
  }
}
