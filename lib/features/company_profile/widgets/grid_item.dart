import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.child, this.showBorder = false});
  final Widget child;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: showBorder
            ? const BoxDecoration(
                border: Border(
                  right: BorderSide(color: TapInvestColors.stone300),
                ),
              )
            : null,
        child: child,
      ),
    );
  }
}
