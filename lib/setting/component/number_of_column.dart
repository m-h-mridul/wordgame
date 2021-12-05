// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wordgame/setting/controller/settingcontroller.dart';
import 'package:wordgame/setting/view/settingui.dart';

SettingController settingController = Get.find();
number_of_column_dialog(BuildContext context) => showDialog(
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
    title: Text('Column', style: TextStyle(color: Colors.white)),
  ),
  body: Column(
    children: [
      SizedBox(
        width:300,
        height:280,
        child: ListView.builder(
            itemCount: column.length,
            itemBuilder: (context, index) => Obx(() => Column(
                  children: [
                    InkWell(
                        onTap: () {
                          // change language over time when other language change
                          print('go to net dialog');
                          if (settingController.number_of_column.value !=
                              column[index]) {
                            settingController.number_of_column.value = column[index];
                            Navigator.pop(context);
                          }
                        },
                        child: ListTile(
                          trailing: Radio(
                            value: column[index],
                            groupValue: settingController
                                .number_of_column.value, //add controller
                            onChanged: (value) {},
                          ),
                          title: Text(column[index]),
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
List<String> column = ['1', '2', '3', '4'];
