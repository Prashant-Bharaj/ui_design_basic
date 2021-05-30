import 'package:uidesignbasic/home.dart';
import 'package:flutter/material.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    brightness: Brightness.dark,
    accentColor: Colors.amberAccent,
     primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.blue,
    backgroundColor: Colors.redAccent,
    textTheme: _appTextTheme(base.textTheme)
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
      fontFamily: 'Pacifico'
    ),
    body1: base.body1.copyWith(
      color: Colors.redAccent,
      backgroundColor: Colors.blue,
      fontSize: 16.9,
      textBaseline: TextBaseline.alphabetic
    ),
      button: base.button.copyWith(
      fontSize: 76,
        fontFamily: 'Pacifico',
        fontWeight: FontWeight.bold,
  ),
  );
}


void main() => runApp(
      new MaterialApp(
       // theme: _appTheme,
/*       theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey[900],
          textTheme: TextTheme(
            headline: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold
            ),
            body1: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold
            ),
            body2: TextStyle(
                fontSize: 16.9,
                fontWeight: FontWeight.bold
            ),
          ),
        ),*/
        home: SafeArea(
          child: InitialPage(),
        ),
      ),
    );