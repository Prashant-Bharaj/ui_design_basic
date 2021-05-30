

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesignbasic/BizCard/BizCard.dart';
import 'package:uidesignbasic/jsonParsing/jsonParsing.dart';
import 'package:uidesignbasic/jsonParsing/json_parsing_map.dart';
import 'package:uidesignbasic/movie_app/movieUI.dart';
import 'package:uidesignbasic/quizzler/main.dart';
import 'package:uidesignbasic/tip_calculator/tipUI.dart';

import 'flutter_app_brewery/destiny/mainOfDestiny.dart';
import 'flutter_app_brewery/dicee/main.dart';
import 'flutter_app_brewery/fundamentals/bars.dart';
import 'flutter_app_brewery/i_am_poor/main.dart';
import 'flutter_app_brewery/loading/main.dart';
import 'flutter_app_brewery/magic_ball/main.dart';
import 'flutter_app_brewery/mi_card/main.dart';
import 'flutter_app_brewery/xylophone/main.dart';
class InitialPage extends StatelessWidget {

  final List pages = [
    "Destiny",
    "Dicee",
    "Fundamentals",
    "i_am_poor",
    "Loading",
    "magic_ball",
    "Mi_card",
    "Movie_app",
    "Quizzler",
    "Tip_calculator",
    "Xylophone",
    "BizCard",
    "PODO",
    "Json Parsing",
//    "weather forecast",
//    "Mortgage Payments",
//    "Quakes app",
//    "Simple google map",
  ];

  final List classes = [
    Destiny(),
    Dicee(),
    Home(),
    IAmPoor(),
    MyApp(),
    BallPage(),
    Mi_card(),
    MovieListView(),
    Quizzler(),
    BillSplitter(),
    XylophoneApp(),
    BizCard(),
    JsonParsingMap(),
    JsonParsing(),
//    WeatherForecast(),
//    MortgageApp(),
//    QuakesApp(),
//    ShowSimpleMap(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('set of apps'),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        backgroundColor: Colors.blueGrey.shade900,
        body: ListView.builder(
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int index){
          return Card(
            color: Colors.white,
            child: ListTile(
              title: Text('${pages.elementAt(index)}'),

              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) => classes.elementAt(index),
              )),
            ),
          );
        }),
      );
  }
}
