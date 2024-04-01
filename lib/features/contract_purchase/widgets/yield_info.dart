import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/side_by_side.dart';

class YieldInfo extends StatelessWidget {
  const YieldInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SideBySideWidget(
      leftChild: Text.rich(
        TextSpan(
          text: NameConstants.netYield.toUpperCase(),
          style: const TextStyle(
            fontSize: 12,
            height: 1.5,
            color: TapInvestColors.slate600,
            fontWeight: FontWeight.w500,
          ),
          children: [
            const WidgetSpan(child: SizedBox(width: 10)),
            const TextSpan(
              text: 'IRR',
              style: TextStyle(
                color: TapInvestColors.green700,
              ),
            ),
            const WidgetSpan(child: SizedBox(width: 4)),
            WidgetSpan(
              child: SvgPicture.asset(
                AssetConstants.infoCircle,
                height: 12,
              ),
              alignment: PlaceholderAlignment.middle,
            ),
          ],
        ),
      ),
      rightChild: const Text.rich(
        TextSpan(
          text: '13.11',
          style: TextStyle(
            fontSize: 16,
            height: 1.5,
            color: TapInvestColors.slate600,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: ' %',
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
