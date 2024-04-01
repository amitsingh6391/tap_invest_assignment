import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/core/utils/action_debounce.dart';
import 'package:tap_invest_assignment/features/contract_purchase/cubit/contract_purchase_cubit.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/contract_header.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/input_amount.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/investment_returns.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/investment_tenure.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/purchase_bottom_bar.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/yield_info.dart';

late ActionDebouncer actionDebouncer;

class ContractPurchasePage extends StatefulWidget {
  const ContractPurchasePage({super.key});
  static const route = '/contract_purchase_page';

  @override
  State<ContractPurchasePage> createState() => _ContractPurchasePageState();
}

class _ContractPurchasePageState extends State<ContractPurchasePage> {
  @override
  void initState() {
    super.initState();
    actionDebouncer = ActionDebouncer();
  }

  @override
  void dispose() {
    actionDebouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContractPurchaseCubit(),
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          leadingWidth: 83,
          leading: IconButton.filled(
            onPressed: () => context.canPop(),
            icon: SvgPicture.asset(AssetConstants.arrowBack),
          ),
        ),
        bottomSheet: const PurchaseBottomBar(),
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: const [
            ContractHeader(),
            Divider(),
            InputAmount(),
            ...[
              InvestmentReturns(),
              Divider(),
              YieldInfo(),
              Divider(),
              InvestmentTenure(),
              Divider()
            ],
          ],
        ),
      ),
    );
  }
}
