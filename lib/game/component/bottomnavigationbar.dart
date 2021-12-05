// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wordgame/home/component/hintalert.dart';
import 'package:wordgame/setting/view/settingui.dart';

import 'backbuttonalert.dart';

Widget bottom(BuildContext context) => BottomNavigationBar(
        backgroundColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20.0,
                child: InkWell(
                  onTap: (){
                    backbutton_dialog(context);
                  },
                  child: Icon(
                    Icons.pause_outlined,
                    color: Colors.green,
                  ),
                ),
              ),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.green,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Icon(
                Icons.wb_sunny,
                color: Colors.green,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  HintAlert().dialog(context);
                },
                child: Icon(
                  Icons.help_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SettingUi.name);
                  },
                  child: Icon(Icons.settings_outlined,
                      size: 30, color: Colors.white)),
              label: ''),
        ]);
