import 'dart:ui';

import 'package:calculate/const.dart';
import 'package:calculate/widgets/my_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColumn extends StatelessWidget {
  final IconData? icon;
  final String text;
  final String? ageNumber;
  final Widget? myWidget;
  final MainAxisAlignment? axis;
  final Function? onTap;
  final Color? color;
  const MyColumn({
    Key? key,
    required this.text,
    this.myWidget,
    this.ageNumber,
    this.axis,
    this.icon,
    this.onTap,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: ()=>onTap!(),
        child: Container(
          decoration: const BoxDecoration(),
          child: Expanded(
            child: MyCard(
              color: color != null ? color! : myColorOne,
              child: Column(
                mainAxisAlignment:
                    axis != null ? axis! : MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    style: GoogleFonts.aldrich(fontSize: 25),
                  ),
                  if (icon != null)
                    Icon(
                      icon!,
                      size: 60,
                    ),
                  if (ageNumber != null)
                    Text(ageNumber!,
                        style: GoogleFonts.aldrich(
                            fontSize: 40, fontWeight: FontWeight.w900)),
                  if (myWidget != null) myWidget!
                ],
              ),
            ),
          ),
        ),
      );
}
