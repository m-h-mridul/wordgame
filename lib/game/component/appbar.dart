// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wordgame/Them.dart';
import 'package:wordgame/game/controller/gmaecontroller.dart';
import 'package:wordgame/game/controller/methodcontroller.dart';

Gamecontroller gamecontroller = Get.find();
WordGenerator wordgenerator = Get.find();
AppBar appbar() => AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Obx(() => Text("0/"+wordgenerator.randomword.value.length.toString(),
            style: Them().textstyle)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 220.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.watch_later_outlined,
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      gamecontroller.timeset.value
                          ? gamecontroller.timerText.toString()
                          : gamecontroller.no_timmer.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
              ],
            ),
          ),
        ]);
