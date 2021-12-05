// ignore_for_file: prefer_const_constructors, constant_identifier_names, avoid_print, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wordgame/home/component/timealert.dart';
import 'package:wordgame/home/controller/homeController.dart';

leveldialog(BuildContext context) => showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        content: setupAlertDialoadContainer(),
      );
    });
Widget setupAlertDialoadContainer() {
  // getx use for controlleing level buttom
  HoemController controller = Get.put(HoemController());
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
    height: 440.0, // Change as per your requirement
    width: 280.0, // Change as per your requirement
    child: ListView.builder(
      itemCount: defficultlevel.length,
      itemBuilder: (BuildContext context, int index) {
        return Obx(() => InkWell(
              onTap: () {
                controller.grope.value = defficultlevel[index];
                // selecting time period
                timelimit(context);
              },
              child: Row(
                children: [
                  Radio(
                    value: defficultlevel[index],
                    groupValue: controller.grope.value,
                    onChanged: (value) {
                      controller.grope.value = value.toString();
                    },
                  ),
                  Text(defficultlevel[index]),
                ],
              ),
            ));
      },
    ),
  );
}

// Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SettingUi()),
//               );
List<String> defficultlevel = [
  'Extremely Easy',
  'VeryEasy',
  'Easy',
  'Medium',
  'Difficult',
  'Very Difficult',
  'Excessively Difficult',
  'Extremely Difficult',
  'Supermely Difficult'
];
