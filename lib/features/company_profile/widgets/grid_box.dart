import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/grid_item.dart';

class GridBox extends StatelessWidget {
  const GridBox({
    super.key,
    required this.children,
  }) : assert(children.length == 4);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.02),
        border: Border.all(color: TapInvestColors.stone300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GridItem(
                showBorder: true,
                child: children.first,
              ),
              GridItem(
                child: children[1],
              ),
            ],
          ),
          const Divider(color: TapInvestColors.stone300),
          Row(
            children: [
              GridItem(
                showBorder: true,
                child: children[2],
              ),
              GridItem(
                child: children.last,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
