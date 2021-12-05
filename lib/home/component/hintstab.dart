// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../Them.dart';

final list = Column(children: [
  Container(
      color: Colors.green,
      height: 60,
      width: 360,
      child: Center(child: Text('How to play', style: Them().textstyle))),
  Image(height: 200, width: 250, image: AssetImage('Assets/p1.PNG')),
  Container(
      color: Colors.green,
      height: 80,
      width: 360,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Find hidden word in the grid horizontally,vertically or diaganally',
          style: Them().textstyle,
          textAlign: TextAlign.center,
        ),
      )),
  Container(
      color: Colors.green,
      height: 60,
      width: 360,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.fiber_manual_record, color: Colors.amber, size: 32),
              Icon(Icons.radio_button_unchecked, color: Colors.white),
              Icon(Icons.radio_button_unchecked, color: Colors.white),
            ]),
      )),
]);

final list2 = Column(children: [
  Container(
      color: Colors.green,
      height: 60,
      width: 360,
      child: Center(child: Text('Use hints', style: Them().textstyle))),
  Image(height: 200, width: 250, image: AssetImage('Assets/p1.PNG')),
  Container(
      color: Colors.green,
      height: 80,
      width: 360,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'You can reveal the first letter of the next palabra when you are stuck',
          style: Them().textstyle,
          textAlign: TextAlign.center,
        ),
      )),
  Container(
      color: Colors.green,
      height: 60,
      width: 360,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.radio_button_unchecked, color: Colors.white),
              Icon(Icons.fiber_manual_record, color: Colors.amber, size: 32),
              Icon(Icons.radio_button_unchecked, color: Colors.white),
            ]),
      )),
]);

final list3 = Column(children: [
  Container(
      color: Colors.green,
      height: 60,
      width: 360,
      child: Center(child: Text('Hint reward', style: Them().textstyle))),
  Image(height: 200, width: 250, image: AssetImage('Assets/p1.PNG')),
  Container(
      color: Colors.green,
      height: 80,
      width: 360,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'You can earn hints by watching a short video when you run out of them',
          style: Them().textstyle,
          textAlign: TextAlign.center,
        ),
      )),
  Container(
      color: Colors.green,
      height: 60,
      width: 360,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.radio_button_unchecked, color: Colors.white),
              Icon(Icons.radio_button_unchecked, color: Colors.white),
              Icon(Icons.fiber_manual_record, color: Colors.amber, size: 32),
            ]),
      )),
]);
