import 'package:flutter/material.dart';


class ContainerPageIndicator extends StatelessWidget {
   ContainerPageIndicator({
    Key? key,
    required bool selected,
    double marginEnd = 0,
  }) : _selected = selected,
       _marginEnd = marginEnd,
       super(key: key);

  final bool _selected;
  double _marginEnd = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 17.8,
      margin: EdgeInsetsDirectional.only(end: _marginEnd),
      decoration: BoxDecoration(
        color: _selected ? const Color(0XFF6A90F2) : Colors.grey.shade400,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}