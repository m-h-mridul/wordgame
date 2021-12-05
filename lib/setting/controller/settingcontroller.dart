// ignore_for_file: non_constant_identifier_names

import 'package:get/state_manager.dart';
import 'package:wordgame/setting/component/languagedialog.dart';

class SettingController extends GetxController {
  RxBool sound = true.obs;
  Rx nightmode = false.obs;
  RxBool gird = false.obs;
  RxBool marquee = true.obs;
  RxBool letter_animation = true.obs;
  RxBool number_of_word_column = true.obs;
  RxString language_select = lanuage_name[0].obs;
  RxString language_change = lanuage_name[0].obs;
  RxString number_of_column='4'.obs;
}
