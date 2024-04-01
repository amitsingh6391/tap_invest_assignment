import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/contract_sign/contract_sign_page.dart';
import 'package:tap_invest_assignment/features/payment_processing/cubit/payment_processing_cubit.dart';
import 'package:tap_invest_assignment/features/payment_processing/widgets/payment_processing_background.dart';
import 'package:tap_invest_assignment/features/payment_processing/widgets/payment_processing_des.dart';
import 'package:tap_invest_assignment/features/payment_processing/widgets/payment_processing_icon.dart';

class PaymentProcessingPage extends StatelessWidget {
  const PaymentProcessingPage({super.key});

  static const route = '/payment_processing_page';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BlocProvider<PaymentProcessingCubit>(
        create: (_) {
          return PaymentProcessingCubit()
            ..startProcessing().then(
              (value) {
                if (value) {
                  context.replace(ContractSignPage.route);
                }
              },
            );
        },
        child: AnnotatedRegion(
          value: SystemUiOverlayStyle.light,
          child: Scaffold(
            backgroundColor: TapInvestColors.green700,
            body: Stack(
              fit: StackFit.expand,
              children: [
                const PaymentProcessingBackground(),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    const PaymentProcessingIcon(),
                    const SizedBox(height: 38),
                    const PaymentProcessingDes(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
