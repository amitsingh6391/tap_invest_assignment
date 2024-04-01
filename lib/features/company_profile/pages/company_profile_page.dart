import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/about.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/clients_and_investor.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/company_profile_bottom_bar.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/documents_tile.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/highlights_tile.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/key_metrices.dart';

const ValueKey companyProfileListViewKey =
    ValueKey('company-profile-list-view');

class CompanyProfilePage extends StatelessWidget {
  const CompanyProfilePage({super.key});

  static const route = '/company_profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.arrow_back_rounded),
            SizedBox(width: 6),
            Text(NameConstants.backToDeals),
          ],
        ),
      ),
      bottomNavigationBar: const CompanyProfileBottomBar(),
      body: ListView(
        key: companyProfileListViewKey,
        children: const [
          About(),
          Divider(),
          ClientsAndInvestor(),
          Divider(),
          HighlightsTile(),
          Divider(),
          KeyMetrics(),
          Divider(),
          DocumentsTile(),
        ],
      ),
    );
  }
}
