// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wordgame/home/view/home.dart';
import 'package:wordgame/setting/view/settingui.dart';

backbutton_dialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 350.0,
            width: 220.0,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Text('Language', style: TextStyle(color: Colors.black)),
              ),
              body: Column(
                children: [
                  ListTile(
                    tileColor: Colors.blueGrey,
                    trailing: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, SettingUi.name);
                        },
                        child: Icon(Icons.settings)),
                  ),
                  ListTile(
                    tileColor: Colors.blueGrey,
                    title: Text('Pause'),
                    leading: Icon(Icons.clear),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      title: Text('Resume'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.play_circle_filled,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Restart'),
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.refresh_outlined)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyHomePage.name);
                    },
                    child: ListTile(
                      title: Text('Home'),
                      leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.home)),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
