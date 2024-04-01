import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
    this.children = const <Widget>[],
    this.padding,
  });

  final List<Widget> children;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: TapInvestColors.white,
        boxShadow: [
          BoxShadow(
            color: TapInvestColors.stone200,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: TapInvestColors.stone200,
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      padding: padding ?? const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
