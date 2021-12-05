// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:wordgame/game/controller/gmaecontroller.dart';
import 'package:wordgame/game/view/game_view.dart';

Gamecontroller gamecontroller = Get.find();
timelimit(BuildContext context) => showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        content: setupAlertDialoadContainer(context),
      );
    });
Widget setupAlertDialoadContainer(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      height: 250.0, // Change as per your requirement
      width: 220.0, // Change as per your requirement
      child: ListView(children: [
        Container(
            height: 60,
            width: 200,
            color: Colors.green,
            child: Center(
                child: Text(
              'Time Limit',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ))),
        InkWell(
          onTap: () {
            // make word for game
            // |set timer
            gamecontroller.gettime(80);
            Navigator.pop(context);
            Navigator.popAndPushNamed(context, GameView.name);
          },
          child: Container(
              height: 60,
              width: 200,
              color: Colors.white,
              child: Center(
                  child: Text(
                'Time Limited',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ))),
        ),
        Divider(
          color: Colors.green,
          height: 2,
        ),
        InkWell(
          onTap: () {
            // time set no Limit(),
            gamecontroller.timeset.value = false;
            gamecontroller.get_timeincrease();
            // make word for game
            Navigator.pop(context);
            Navigator.popAndPushNamed(context, GameView.name);
          },
          child: Container(
              height: 60,
              width: 200,
              color: Colors.white,
              child: Center(
                  child: Text(
                'No time Limit',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ))),
        ),
        Container(
          height: 80,
          width: 200,
          color: Colors.green,
        ),
      ]));
}
