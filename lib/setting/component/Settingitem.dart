// ignore_for_file: non_constant_identifier_names, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wordgame/Them.dart';

Padding Setting_andclose_icon(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: Colors.green,
              child: ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  'Settings',
                  style: Them().textstyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
  }

