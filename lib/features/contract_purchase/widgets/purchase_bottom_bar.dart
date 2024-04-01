import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/core/widgets/custom_bottom_bar.dart';
import 'package:tap_invest_assignment/core/widgets/swipe_to_pay_button.dart';
import 'package:tap_invest_assignment/features/contract_purchase/cubit/contract_purchase_cubit.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/side_by_side.dart';
import 'package:tap_invest_assignment/features/payment_processing/pages/payment_processing_page.dart';

class PurchaseBottomBar extends StatelessWidget {
  const PurchaseBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomBar(
      children: [
        const SideBySideWidget(
          padding: EdgeInsets.only(bottom: 10),
          leftChild: Text(
            NameConstants.balance100000,
            style: TextStyle(
              fontSize: 12,
              height: 1.5,
              color: TapInvestColors.stone700,
            ),
          ),
          rightChild: Text(
            NameConstants.required0,
            style: TextStyle(
              fontSize: 12,
              height: 1.5,
              color: TapInvestColors.stone700,
            ),
          ),
        ),
        SwipeToPayButton(
          validator: context.read<ContractPurchaseCubit>().validateAmmount,
          onComplete: () => context.replace(PaymentProcessingPage.route),
        ),
      ],
    );
  }
}
