import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:tap_invest_assignment/features/payment_processing/cubit/payment_processing_cubit.dart';

class PaymentProcessingDes extends StatelessWidget {
  const PaymentProcessingDes({super.key});

  String _getTitleText(PaymentProcessingState state) {
    return state.maybeWhen(
      paymentFinished: () => NameConstants.paymentDone,
      contractGenerated: () => NameConstants.generatingContract,
      contractSigned: () => NameConstants.allDone,
      orElse: () => '',
    );
  }

  String _getDescriptionText(PaymentProcessingState state) {
    return state.maybeWhen(
      paymentFinished: () => NameConstants.paymentCompleted,
      contractGenerated: () => NameConstants.generatedContract,
      contractSigned: () => NameConstants.signedContract,
      orElse: () => '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentProcessingCubit, PaymentProcessingState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              _getTitleText(state),
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: TapInvestColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              _getDescriptionText(state),
              style: const TextStyle(
                fontSize: 12,
                height: 1.5,
                color: TapInvestColors.white,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ).animate(key: ValueKey(state)).fadeIn();
      },
    );
  }
}
