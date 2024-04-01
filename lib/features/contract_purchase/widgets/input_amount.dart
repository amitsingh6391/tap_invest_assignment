import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/contract_purchase/cubit/contract_purchase_cubit.dart';
import 'package:tap_invest_assignment/features/contract_purchase/pages/contract_purchase_page.dart';

class InputAmount extends StatelessWidget {
  const InputAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 44, 20, 20),
          child: Column(
            children: [
              const Text(
                NameConstants.enterAmount,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  letterSpacing: 0.8,
                  color: TapInvestColors.black40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormField(
                maxLines: 1,
                maxLength: 12,
                controller:
                    context.read<ContractPurchaseCubit>().textController,
                style: const TextStyle(
                  fontSize: 24,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                  color: TapInvestColors.slate600,
                ),
                onChanged: (_) {
                  actionDebouncer.debounceAction(
                    context.read<ContractPurchaseCubit>().validateAmmount,
                  );
                },
                decoration: const InputDecoration(
                  counterText: '',
                  hintText: NameConstants.minAmount,
                  isCollapsed: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: TapInvestColors.stone400),
                ),
                textAlign: TextAlign.center,
                cursorColor: TapInvestColors.stone950,
                textInputAction: TextInputAction.done,
                keyboardType: const TextInputType.numberWithOptions(),
              ),
              const SizedBox(height: 14),
              BlocSelector<ContractPurchaseCubit, ContractPurchaseState,
                  String?>(
                selector: (_) => _.errorMessage,
                builder: (_, errorMessage) {
                  return Text(
                    errorMessage ?? '',
                    key: const ValueKey(NameConstants.error),
                    style: const TextStyle(
                      fontSize: 12,
                      height: 1.6,
                      color: TapInvestColors.amber700,
                    ),
                  ).animate(key: ValueKey(errorMessage)).shakeX();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
