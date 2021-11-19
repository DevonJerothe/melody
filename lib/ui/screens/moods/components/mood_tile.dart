import 'package:flutter/material.dart';
import '../../../../data/models/models.dart';
import '../../../../utils/formatters.dart';
import '../../../../utils/size_config.dart';

class MoodTile extends StatelessWidget {
  const MoodTile({required this.mood, this.top = false, Key? key})
      : super(key: key);

  final MoodItem mood;
  final bool top;

  @override
  Widget build(BuildContext context) {
    final endDate = (top)
        ? ((mood.dateEnded == null) ? DateTime.now() : mood.dateEnded)
        : mood.dateEnded;

    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(formatDate(endDate, format: 'hh:mm')),
              Text(formatDate(mood.dateCreated, format: 'hh:mm'))
            ],
          ),
          const VerticalDivider(
            thickness: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(mood.color).withOpacity(0.25),
                    border: Border(
                      left: BorderSide(
                          color: Color(mood.color).withOpacity(1), width: 6),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mood.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.timer,
                                size: 12,
                              ),
                              Text(
                                '15 Min',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              mood.description,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 15,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
