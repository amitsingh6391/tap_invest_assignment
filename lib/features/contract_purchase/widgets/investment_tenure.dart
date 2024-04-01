import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/side_by_side.dart';

class InvestmentTenure extends StatelessWidget {
  const InvestmentTenure({super.key});

  @override
  Widget build(BuildContext context) {
    return SideBySideWidget(
      leftChild: Text(
        NameConstants.tenure.toUpperCase(),
        style: const TextStyle(
          fontSize: 12,
          height: 1.5,
          color: TapInvestColors.slate600,
          fontWeight: FontWeight.w500,
        ),
      ),
      rightChild: const Text.rich(
        TextSpan(
          text: '61',
          style: TextStyle(
            fontSize: 16,
            height: 1.5,
            color: TapInvestColors.slate600,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: ' ${NameConstants.days},',
              style: TextStyle(
                fontSize: 14,
                color: TapInvestColors.stone400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
