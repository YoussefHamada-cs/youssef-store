import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.fillcolor,
    this.isSelect = false,
  });
  final Color fillcolor;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20 / 2.5),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelect ? Colors.black45 : Colors.transparent)),
      child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: fillcolor)),
    );
  }
}
