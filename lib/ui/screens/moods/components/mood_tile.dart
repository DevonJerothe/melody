import 'package:flutter/material.dart';
import '../../../../data/db/database.dart';
import '../../components/reusables.dart';
import '../../../../utils/formatters.dart';
import '../../../../utils/size_config.dart';

class MoodTile extends StatelessWidget {
  const MoodTile({required this.mood, Key? key}) : super(key: key);

  final Moods mood;

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 5),
      height: SizeConfig.blockSizeVertical! * 15,
      width: SizeConfig.blockSizeHorizontal! * 100,
      color: Color(mood.color!),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(mood.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  mood.description,
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
          Text(
              formatDate(mood.dateCreated, format: 'MMM dd -', addSymbol: true))
        ],
      ),
    );
  }
}
