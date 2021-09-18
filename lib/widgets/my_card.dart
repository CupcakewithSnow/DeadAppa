import 'package:calculate/const.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color color;
  final Widget child;
  const MyCard({
    key,
    this.color = myColorOne,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    child: Container(
      child: child,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 6,
            offset: Offset(2, 2), // Shadow position
          ),
        ],
      ),
    ),
  );

}
