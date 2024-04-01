import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/core/widgets/custom_bottom_bar.dart';
import 'package:tap_invest_assignment/core/widgets/primary_button.dart';
import 'package:tap_invest_assignment/features/contract_purchase/pages/contract_purchase_page.dart';

class CompanyProfileBottomBar extends StatelessWidget {
  const CompanyProfileBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomBar(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  NameConstants.field,
                  style: TextStyle(
                    fontSize: 10,
                    height: 1.5,
                    letterSpacing: 0.8,
                    color: TapInvestColors.black40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  NameConstants.prcenatges30,
                  style: TextStyle(
                    fontSize: 16,
                    color: TapInvestColors.slate600,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            PrimaryButton(
              label: NameConstants.tapToInvest,
              onPressed: () async {
                await context.push(
                  ContractPurchasePage.route,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
