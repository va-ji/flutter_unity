import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  ThemeData? _theme;
  bool useDarkMode = false;

  ApplicationTheme(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;
    final TextTheme _googleTextTheme =
        GoogleFonts.openSansTextTheme(_textTheme).copyWith(
      bodyText1: GoogleFonts.montserrat(textStyle: _textTheme.bodyText1),
    );

    final ThemeData _baseTheme =
        useDarkMode ? ThemeData.dark() : ThemeData.light();

    _theme = _baseTheme.copyWith(
      colorScheme: _baseTheme.colorScheme.copyWith(
        primary: Colors.white,
        secondary: Colors.blueAccent,
      ),
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 1,
        color: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: _googleTextTheme.headline6,
        toolbarTextStyle: _googleTextTheme.headline5,
      ),
      primaryTextTheme: TextTheme(
        headline6: ThemeData.light().primaryTextTheme.headline6!.copyWith(
              color: Colors.black,
            ),
      ),
    );
  }

  ThemeData? get getAppTheme => _theme;
}
