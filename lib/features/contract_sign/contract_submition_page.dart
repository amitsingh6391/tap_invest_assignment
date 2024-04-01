import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/core/utils/extensions.dart';
import 'package:tap_invest_assignment/features/company_profile/pages/company_profile_page.dart';
import 'package:tap_invest_assignment/features/payment_processing/cubit/payment_processing_cubit.dart';
import 'package:tap_invest_assignment/features/payment_processing/widgets/payment_processing_background.dart';
import 'package:tap_invest_assignment/features/payment_processing/widgets/payment_processing_des.dart';
import 'package:tap_invest_assignment/features/payment_processing/widgets/payment_processing_icon.dart';

class ContractSubmitionPage extends StatelessWidget {
  const ContractSubmitionPage({super.key});

  static const route = '/contract_submition_page';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BlocProvider<PaymentProcessingCubit>(
        create: (context) => PaymentProcessingCubit()
          ..contractSign().then((value) {
            if (value) {
              Future.delayed(
                const Duration(seconds: 1),
                () {
                  GoRouter.of(context)
                      .popUntilPath(context, CompanyProfilePage.route);
                },
              );
            }
          }),
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
