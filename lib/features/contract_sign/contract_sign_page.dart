import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/widgets/primary_button.dart';
import 'package:tap_invest_assignment/features/contract_sign/contract_submition_page.dart';

class ContractSignPage extends StatelessWidget {
  const ContractSignPage({super.key});
  static const route = '/contract_sign_page';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetConstants.contract),
                const SizedBox(height: 34),
                PrimaryButton(
                  onPressed: () => context.replace(ContractSubmitionPage.route),
                  label: NameConstants.signContract,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
