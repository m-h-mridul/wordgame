// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member, avoid_print

import 'package:english_words/english_words.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class WordGenerator extends GetxController {
  RxList randomword = [].obs;
  //final savedword = Set<WordPair>();
//
//
  getstring() {
    generateWordPairs()
        .take(5)
        .forEach((e) => randomword.value.add(e.toString()));
    print("Limit ans is " + randomword.length.toString());
  }
}
