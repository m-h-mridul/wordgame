// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wordgame/setting/controller/settingcontroller.dart';

import 'languagechagedialog.dart';

SettingController settingController = Get.find();
language_dialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 400.0,
            width: 300.0,
            child: c),
      ),
    );

var c = Scaffold(
  appBar: AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: Text('Language', style: TextStyle(color: Colors.white)),
  ),
  body: Column(
    children: [
      Expanded(
        flex:4,
        child: ListView.builder(
            itemCount: lanuage_name.length,
            itemBuilder: (context, index) => Obx(() => Column(
                  children: [
                    InkWell(
                        onTap: () {
                          // change language over time when other language change
                          print('go to net dialog');
                          if (settingController.language_select.value !=
                              lanuage_name[index]) {
                            showAlertDialog(context,lanuage_name[index]);
                          }
                        },
                        child: ListTile(
                          trailing: Radio(
                            value: lanuage_name[index],
                            groupValue: settingController
                                .language_select.value, //add controller
                            onChanged: (value) {},
                          ),
                          title: Text(lanuage_name[index]),
                        )),
                    Divider(color: Colors.green),
                  ],
                ))),
      ),
               Expanded(
                child: Container(
                  color:Colors.green
                ),
              ),
    ],
  ),
);
List<String> lanuage_name = [
  'English',
  'Trakce',
  'Deutch',
  'Fspanol',
  'Portugues',
  'Francais',
  'Italiiano',
  'Nederland',
  'Cestina',
  'Dansk',
  'Suomi',
  'Magyer',
  'Norsk',
  'Polski',
  'Romana',
  'Pyccknn',
  'Svchska',
  'Swahila'
];
