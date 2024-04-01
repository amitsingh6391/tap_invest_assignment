import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/features/payment_processing/cubit/payment_processing_cubit.dart';

class PaymentProcessingIcon extends StatelessWidget {
  const PaymentProcessingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentProcessingCubit, PaymentProcessingState>(
      builder: (context, state) {
        if (state is PaymentProcessingInitialState) {
          return const SizedBox();
        }
        return Container(
          constraints: const BoxConstraints(
            minHeight: 111,
            minWidth: 111,
          ),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: const Color(0xFF116631),
            borderRadius: BorderRadius.circular(14),
          ),
          child: state.maybeWhen(
            orElse: () => SvgPicture.asset(AssetConstants.checkBg),
            paymentFinished: () => Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(AssetConstants.checkBg)
                    .animate(key: const ValueKey('checkBg'), delay: 300.ms)
                    .rotate(duration: 5.seconds),
                SvgPicture.asset(AssetConstants.check)
                    .animate(key: const ValueKey('check'))
                    .scale(),
              ],
            ),
            contractGenerationInProgress: () =>
                SvgPicture.asset(AssetConstants.contractIcon)
                    .animate(key: const ValueKey('contract'))
                    .scale(),
            contractGenerated: () =>
                SvgPicture.asset(AssetConstants.contractIcon)
                    .animate(key: const ValueKey('contract')),
            contractSigned: () => SvgPicture.asset(AssetConstants.completeFlag)
                .animate(key: const ValueKey('completed'))
                .scale(),
          ),
        ).animate().scale();
      },
    );
  }
}
