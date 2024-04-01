import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/contract_purchase/cubit/contract_purchase_cubit.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/side_by_side.dart';

class InvestmentReturns extends StatelessWidget {
  const InvestmentReturns({super.key});

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
      rightChild: Row(
        children: [
          const Text(
            '₹ ',
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: TapInvestColors.stone400,
              fontWeight: FontWeight.w500,
            ),
          ),
          BlocSelector<ContractPurchaseCubit, ContractPurchaseState, String>(
            selector: (state) => state.totalReturn,
            builder: (_, totalReturn) {
              return Text(
                totalReturn,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: TapInvestColors.slate600,
                  fontWeight: FontWeight.w500,
                ),
              )
                  .animate(key: ValueKey(totalReturn))
                  .flip(curve: Curves.decelerate);
            },
          ),
        ],
      ),
    );
  }
}
