import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordgame/home/view/home.dart';
import 'package:wordgame/setting/view/settingui.dart';

import 'game/view/game_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // status bar color
      statusBarColor: Color(0xFFFFFFFF),
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Word Geme',
      theme: ThemeData( 
        textTheme: TextTheme(
       bodyText1:TextStyle(color:Colors.lime[500]) ,
        ),
        primarySwatch: Colors.green,
      ),
      initialRoute: MyHomePage.name,
      routes: {
      MyHomePage.name:(context)=>MyHomePage(),
      GameView.name: (context) => GameView(),
      SettingUi.name: (context) => SettingUi(),
      }
    );
  }
}


