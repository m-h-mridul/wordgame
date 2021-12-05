// ignore_for_file: unrelated_type_equality_checks, unused_local_variable, prefer_const_constructors, non_constant_identifier_names

import 'package:get/get.dart';
import 'dart:async';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Gamecontroller extends GetxController {
  RxBool timeset=true.obs;
  RxInt timerMaxSeconds = 0.obs;
  RxInt currentSeconds = 0.obs;
  RxString timertext = '0'.obs;
  String get timerText =>
      '${((timerMaxSeconds.value - currentSeconds.value) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds.value - currentSeconds.value) % 60).toString().padLeft(2, '0')}';
  String get no_timmer=>
  '${((currentSeconds.value) ~/ 60).toString().padLeft(2, '0')}: ${((currentSeconds.value) % 60).toString().padLeft(2, '0')}';
//
//
  gettime(int time) {
    timerMaxSeconds.value = time;
    Timer timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        if (currentSeconds.value == timerMaxSeconds.value) {
          timer.cancel();
        } else {
          currentSeconds.value++;
        }
      },
    );
  }

  get_timeincrease() {
    Timer timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        currentSeconds.value++;
      },
    );
  }
}
