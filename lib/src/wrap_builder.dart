import 'package:flutter/material.dart';

class WrapBuilder extends StatelessWidget {

  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final Axis direction;
  final WrapAlignment alignment;
  final double spacing;
  final WrapAlignment runAlignment;
  final double runSpacing;
  final WrapCrossAlignment crossAxisAlignment;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  const WrapBuilder({
    Key key,
    @required this.itemBuilder,
    @required this.itemCount,
    this.textDirection,
    this.verticalDirection: VerticalDirection.down,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
  });

  @override
  Widget build(BuildContext context) {

    return Wrap(
      direction: direction,
      crossAxisAlignment: crossAxisAlignment,
      alignment: alignment,
      verticalDirection: verticalDirection,
      textDirection: textDirection,
      runAlignment: runAlignment,
      key: key,
      runSpacing: runSpacing,
      spacing: spacing,
      children: new List.generate(this.itemCount,
              (index) => this.itemBuilder(context, index)).toList(),
    );
  }

}