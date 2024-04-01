import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/features/payment_processing/cubit/payment_processing_cubit.dart';
import 'package:lottie/lottie.dart';

class PaymentProcessingBackground extends StatelessWidget {
  const PaymentProcessingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentProcessingCubit, PaymentProcessingState>(
      buildWhen: (previous, _) => previous.maybeWhen(
        intial: () => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeWhen(
          intial: () => const SizedBox.shrink(),
          orElse: () => Stack(
            fit: StackFit.expand,
            children: [
              SvgPicture.asset(AssetConstants.dots, fit: BoxFit.cover),
              Lottie.asset(AssetConstants.backgroundFlow, fit: BoxFit.cover),
            ],
          ),
        );
      },
    );
  }
}
