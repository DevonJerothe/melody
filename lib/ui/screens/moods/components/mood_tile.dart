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
                      const SizedBox(height: 10),
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
                      ),
                      const SizedBox(height: 10),
                      if (mood.positiveTags!.isNotEmpty) ...[
                        SizedBox(
                          height: 25,
                          child: CustomScrollView(
                            scrollDirection: Axis.horizontal,
                            slivers: buildTagTiles(),
                            semanticChildCount: 4,
                          ),
                        )
                      ],
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 25,
                            //width: 25,
                            child: MoodIcon(level: mood.level),
                          ),
                          InkWell(
                            //TODO: add more functionality (Edit/Delete/Quick End)
                            onTap: () {},
                            child: const SizedBox(
                                width: 35,
                                child: Icon(Icons.more_horiz_rounded)),
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

  List<SliverList> buildTagTiles({bool negative = false}) {
    List<SliverList> list = [];
    if (negative) {
      list.add(SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => TagTile(tag: mood.negativeTags![index]),
              childCount: mood.negativeTags!.length)));
    } else {
      list.add(SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => TagTile(tag: mood.positiveTags![index]),
              childCount: mood.positiveTags!.length)));
    }
    return list;
  }
}

class TagTile extends StatelessWidget {
  const TagTile({
    Key? key,
    required this.tag,
  }) : super(key: key);

  final TagItem tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      height: 24,
      color: Colors.blueAccent,
      child: Text(tag.title),
    );
  }
}

class MoodIcon extends StatelessWidget {
  const MoodIcon({required this.level, Key? key}) : super(key: key);

  final int level;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: getMoodRow());
  }

  List<Widget> getMoodRow() {
    List<Widget> row = [];

    Image img = Image.asset('assests/png/emojis/04.png', width: 23);
    Text text = const Text('Good');

    switch (level) {
      case 1:
        {
          img = Image.asset('assets/png/emojis/01.png', width: 23);
          text = const Text('Awefull');
        }
        break;
      case 2:
        {
          img = Image.asset('assets/png/emojis/02.png', width: 23);
          text = const Text('Bad');
        }
        break;
      case 3:
        {
          img = Image.asset('assets/png/emojis/03.png', width: 23);
          text = const Text('Not Good');
        }
        break;
      case 4:
        {
          img = Image.asset('assets/png/emojis/04.png', width: 23);
          text = const Text('Fine');
        }
        break;
      case 5:
        {
          img = Image.asset('assets/png/emojis/05.png', width: 23);
          text = const Text('Good');
        }
        break;
      case 6:
        {
          img = Image.asset('assets/png/emojis/06.png', width: 23);
          text = const Text('Great');
        }
        break;
      case 7:
        {
          img = Image.asset('assets/png/emojis/07.png', width: 23);
          text = const Text('Amazing');
        }
        break;
      default:
    }
    row
      ..add(img)
      ..add(const SizedBox(width: 8))
      ..add(text);
    return row;
  }
}
