// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wordgame/setting/component/Settingitem.dart';
import 'package:wordgame/setting/component/languagedialog.dart';
import 'package:wordgame/setting/component/number_of_column.dart';
import 'package:wordgame/setting/controller/settingcontroller.dart';
import '../../Them.dart';

class SettingUi extends StatelessWidget {
  SettingUi({Key? key}) : super(key: key);
  static String name = 'Setting';
  SettingController settingcontroller = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Word Search', style: Them().textstyle),
        ),
        body: ListView(
          children: [
            Setting_andclose_icon(context),
            InkWell(
              onTap: () {
                language_dialog(context);
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.language, color: Colors.blue),
                  title: Text(
                      'Language ( ${settingcontroller.language_change.value})'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Obx(
                      () => Text(
                          settingcontroller.language_change.value
                              .substring(0, 2),
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                settingcontroller.sound.value = !settingcontroller.sound.value;
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.volume_up, color: Colors.blue),
                  title: Text('Sound'),
                  trailing: Obx(() => (settingcontroller.sound.value)
                      ? Icon(Icons.task_alt, color: Colors.green)
                      : Icon(Icons.unpublished, color: Colors.green)),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                settingcontroller.nightmode.value =
                    !settingcontroller.nightmode.value;
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.brightness_7, color: Colors.blue),
                  title: Text('Night Mode'),
                  trailing: Obx(() => (settingcontroller.nightmode.value)
                      ? Icon(Icons.task_alt, color: Colors.green)
                      : Icon(Icons.unpublished, color: Colors.green)),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                settingcontroller.gird.value = !settingcontroller.gird.value;
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.pattern, color: Colors.blue),
                  title: Text('Gird'),
                  trailing: Obx(() => (settingcontroller.gird.value)
                      ? Icon(Icons.task_alt, color: Colors.green)
                      : Icon(Icons.unpublished, color: Colors.green)),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                settingcontroller.marquee.value =
                    !settingcontroller.marquee.value;
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.language, color: Colors.blue),
                  title: Text('Marquee'),
                  trailing: Obx(() => (settingcontroller.marquee.value)
                      ? Icon(Icons.task_alt, color: Colors.green)
                      : Icon(Icons.unpublished, color: Colors.green)),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                settingcontroller.letter_animation.value =
                    !settingcontroller.letter_animation.value;
              },
              child: Card(
                child: ListTile(
                    leading: Icon(Icons.format_shapes, color: Colors.blue),
                    title: Text('Letter Aniamtion'),
                    trailing: Obx(() =>
                        (settingcontroller.letter_animation.value)
                            ? Icon(Icons.task_alt, color: Colors.green)
                            : Icon(Icons.unpublished, color: Colors.green))),
              ),
            ),
            InkWell(
              onTap: () {
                number_of_column_dialog(context);
              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.menu_book, color: Colors.blue),
                  title: Text('Number of Word Columns'),
                  trailing: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Obx(
                        () => Text(settingcontroller.number_of_column.value,
                            style: TextStyle(color: Colors.white)),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
