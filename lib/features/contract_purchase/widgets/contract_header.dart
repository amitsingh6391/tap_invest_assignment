import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';

class ContractHeader extends StatelessWidget {
  const ContractHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(24, 8, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            NameConstants.purchasing,
            style: TextStyle(
              fontSize: 18,
              height: 1.5,
              color: TapInvestColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2),
          Text.rich(
            style: TextStyle(
              fontSize: 14,
              color: TapInvestColors.stone500,
              fontWeight: FontWeight.w400,
              height: 1.6,
            ),
            TextSpan(
              text: NameConstants.agrizy,
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: TapInvestColors.stone500,
                      size: 16,
                    ),
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
                TextSpan(
                  text: NameConstants.keshavIndustries,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
