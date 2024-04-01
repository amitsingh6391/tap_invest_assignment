import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_invest_assignment/features/company_profile/pages/company_profile_page.dart';
import 'package:tap_invest_assignment/features/contract_purchase/pages/contract_purchase_page.dart';
import 'package:tap_invest_assignment/features/contract_sign/contract_sign_page.dart';
import 'package:tap_invest_assignment/features/contract_sign/contract_submition_page.dart';
import 'package:tap_invest_assignment/features/payment_processing/pages/payment_processing_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class TapInvestRouter {
  static GoRouter get router => GoRouter(
        navigatorKey: _rootNavigatorKey,
        routes: [
          GoRoute(
            path: CompanyProfilePage.route,
            parentNavigatorKey: _rootNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const CompanyProfilePage(),
              key: UniqueKey(),
            ),
          ),
          GoRoute(
            path: ContractPurchasePage.route,
            parentNavigatorKey: _rootNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const ContractPurchasePage(),
              key: UniqueKey(),
            ),
          ),
          GoRoute(
            path: ContractSignPage.route,
            parentNavigatorKey: _rootNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const ContractSignPage(),
              key: UniqueKey(),
            ),
          ),
          GoRoute(
            path: PaymentProcessingPage.route,
            parentNavigatorKey: _rootNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const PaymentProcessingPage(),
              key: UniqueKey(),
            ),
          ),
          GoRoute(
            path: ContractSubmitionPage.route,
            parentNavigatorKey: _rootNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const ContractSubmitionPage(),
              key: UniqueKey(),
            ),
          ),
        ],
        initialLocation: CompanyProfilePage.route,
      );
}
