import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static ThemeData get dark => ThemeData(
        fontFamily: 'ProductSans',
        brightness: Brightness.dark,
        cardTheme: const CardTheme(
          elevation: 8.0,
        ),
        primaryColor: Colors.black,
        appBarTheme: ThemeData.dark().appBarTheme,
        bottomAppBarTheme:
            const BottomAppBarTheme(color: Colors.black, elevation: 0.0),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 6,
          unselectedItemColor: Color(0x88d4d4d4),
        ),
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      );

  static ThemeData get light => ThemeData(
        fontFamily: 'ProductSans',
        brightness: Brightness.light,
        cardTheme: const CardTheme(
          elevation: 8.0,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          elevation: 1,
          color: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 6,
          unselectedItemColor: Color(0x88000000),
          backgroundColor: Colors.white,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
        ),
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(),
          color: Colors.white,
        ),
        canvasColor: const Color(0xfff2f2f2),
      );

  static ThemeData getDrawerTheme(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return ThemeData(
        primaryColor: Colors.black,
        canvasColor: Colors.black,
        dividerColor: Colors.black,
        brightness: Brightness.dark,
      );
    }
    return ThemeData(
      primaryColor: Colors.white,
      canvasColor: Colors.white,
      dividerColor: Colors.white,
      brightness: Brightness.light,
    );
  }

  static Color getSnackbarTxtColor(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return Colors.black;
    }
    return Colors.white;
  }

  static Color getBlackOrWhite(BuildContext context, {bool reverse = false}) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return reverse ? Colors.black : Colors.white;
    }
    return reverse ? Colors.white : Colors.black;
  }

  static Color accentTextColor(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return Colors.white;
    }
    return Colors.black;
  }

  static Color containerColor(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return Colors.black;
    }
    return const Color(0xffffffff);
  }
}
