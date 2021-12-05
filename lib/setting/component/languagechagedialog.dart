// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:wordgame/setting/controller/settingcontroller.dart';

SettingController settingController = Get.find();
showAlertDialog(BuildContext context, String langage) {
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    actionsAlignment: MainAxisAlignment.center,
    backgroundColor: Colors.green,
    title: Center(
        child: Text(
      "Change language?",
      style: TextStyle(fontSize: 22, color: Colors.white),
    )),
    actions: [
      ElevatedButton(
        child: const Text(
          'Yes',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          settingController.language_select.value = langage;
          settingController.language_change.value = langage;
          Navigator.pop(context);
          Navigator.pop(context);
          
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            )),
      ),
      ElevatedButton(
        child: const Text(
          'No',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            )),
      ),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
