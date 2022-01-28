import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../moods/moods_home.dart';

class BottomNavMain extends StatelessWidget {
  BottomNavMain({Key? key}) : super(key: key);
  final currentDate = DateTime.now();

  final screens = [
    MoodsHome(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) => ValueBuilder<int?>(
        initialValue: 0,
        builder: (index, update) => Scaffold(
          body: screens[index!],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (val) => update(val),
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.brain), label: 'Moods'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.bookmark), label: 'Journal'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.home), label: 'Dashboard'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.cogs), label: 'Habits'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.calendar), label: 'Recap'),
            ],
          ),
        ),
      );
}
