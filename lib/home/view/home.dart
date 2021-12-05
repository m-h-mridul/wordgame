// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:wordgame/Them.dart';
import 'package:wordgame/game/controller/gmaecontroller.dart';
import 'package:wordgame/game/controller/methodcontroller.dart';
import 'package:wordgame/home/component/hintalert.dart';
import 'package:wordgame/home/component/leveldialoge.dart';
import 'package:wordgame/home/component/ratingdialog.dart';
import 'package:wordgame/setting/view/settingui.dart';

class MyHomePage extends StatelessWidget {
  static String name = 'Home';
  Gamecontroller gamecontroller = Get.put(Gamecontroller());
  WordGenerator wordcoltroller = Get.put(WordGenerator());
  @override
  Widget build(BuildContext context) {
    // for word generator
    wordcoltroller.getstring();
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: Them().backthem),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Text(
                    'Word Game',
                    style: TextStyle(
                      fontSize: 42,
                      color: Colors.black,
                      fontFamily: 'Roboto Slab',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        border: Border.all(
                          width: 4.0,
                          color: Colors.green,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: InkWell(
                      onTap: () {
                        leveldialog(context);
                      },
                      child: const Center(
                        child: Text(
                          'Play',
                          style: TextStyle(
                            fontSize: 32, //Roboto Slab
                            color: Colors.black,
                            fontFamily: 'Oswald',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.help_outline, size: 30),
                          onPressed: () {
                            HintAlert().dialog(context);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.settings_suggest, size: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingUi()),
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.star_border, size: 30),
                          onPressed: () {
                            ratingdialog(context);
                          },
                        ),
                      ]),
                ]),
          )),
    ));
  }
}
