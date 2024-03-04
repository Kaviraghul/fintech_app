import 'package:flutter/material.dart';

class CircleComponent extends StatelessWidget {
  final Color color;
  final AlignmentGeometry? alignmentGeometry;
  const CircleComponent({
    required this.color,
    this.alignmentGeometry,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignmentGeometry ?? const AlignmentDirectional(0, 0),
      child: Container(
        height: MediaQuery.of(context).size.width / 1.3,
        width: MediaQuery.of(context).size.width / 1.3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
