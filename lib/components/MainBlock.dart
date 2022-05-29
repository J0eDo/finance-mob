import 'dart:developer';
import 'dart:html';
import 'dart:ui';

import 'package:courses_control/colors.dart';
import 'package:flutter/material.dart';

class MainBlock extends StatelessWidget {
  const MainBlock({Key? key, required this.title, required this.titleColor})
      : super(key: key);

  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(color: secondaryColor),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            textDirection: TextDirection.ltr,
            children: [
              Text(title, style: TextStyle(fontSize: 24, color: titleColor))
            ],
          )
        ]));
  }
}
