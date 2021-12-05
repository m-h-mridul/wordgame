// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SelectableItemWidget extends StatefulWidget {
  final String character;
  final bool isSelected;

  const SelectableItemWidget({
    Key? key,
    required this.character,
    required this.isSelected,
  }) : super(key: key);

  @override
  _SelectableItemWidgetState createState() => _SelectableItemWidgetState();
}

class _SelectableItemWidgetState extends State<SelectableItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      value: widget.isSelected ? 1 : 0,
      duration: kThemeChangeDuration,
      vsync: this,
    );

    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    ));
  }

  @override
  void didUpdateWidget(SelectableItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isSelected != widget.isSelected) {
      if (widget.isSelected) {
        controller.forward();
      } else {
        controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: scaleAnimation,
        builder: (context, child) => Transform.scale(
          scale: scaleAnimation.value,
          child: ClipRRect(
         borderRadius: BorderRadius.zero,
            child: child,
          ),
        ),
        child: Container(
          width: 60,
          height:30,
          decoration: BoxDecoration(
              color: widget.isSelected ? Colors.yellow : Colors.white,),
          child: Center(child: Text(widget.character,style: TextStyle(fontSize: 20),)),
        ),
      );
}
