// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable, invalid_use_of_protected_member

import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wordgame/game/component/appbar.dart';
import 'package:wordgame/game/component/bottomnavigationbar.dart';
import 'package:wordgame/game/component/selectedWidget.dart';
import 'package:wordgame/game/controller/methodcontroller.dart';

class GameView extends StatefulWidget {
  GameView({Key? key}) : super(key: key);
  static String name = 'Gameview';

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  // for drag contolling
  final controller = DragSelectGridViewController();
  // for word generate
  WordGenerator wordgenerate = Get.find();
  @override
  void initState() {
    super.initState();
    controller.addListener(rebuild);
  }

  @override
  void dispose() {
    controller.removeListener(rebuild);
    super.dispose();
  }

  void rebuild() => setState(() {});
  @override
  Widget build(BuildContext context) {
    // for cheak selecting item
    final isSelected = controller.value.isSelecting;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: appbar(),
            body: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Obx(() => GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 6,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0),
                      itemCount: wordgenerate.randomword.value.length,
                      itemBuilder: (context, index) => Center(
                            child: Text(wordgenerate.randomword.value[index]),
                          ))),
                ),
                Divider(height: 4, color: Colors.black),
                Expanded(
                  flex: 2,
                  child: Obx(
                    () => DragSelectGridView(
                      gridController: controller,
                      padding: const EdgeInsets.all(0),
                      itemCount: wordgenerate.randomword.value.length,
                      itemBuilder: (context, index, selected) {
                        return GridTile(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black, width: 0.5)),
                            child: SelectableItemWidget(
                              isSelected: selected,
                              character: wordgenerate.randomword.value[index],
                            ),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 3 / 2,
                        crossAxisCount: 4,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: bottom(context)));
  }
}
