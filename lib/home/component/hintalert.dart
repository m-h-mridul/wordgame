// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hintstab.dart';

class HintAlert {
  dialog(BuildContext context) => showDialog(
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
}

var c = DefaultTabController(
  initialIndex: 0,
  length: 3,
  child: Scaffold(
    body: TabBarView(
      children: [list, list2, list3],
    ),
  ),
);
