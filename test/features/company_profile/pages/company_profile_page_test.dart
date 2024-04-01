import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tap_invest_assignment/features/company_profile/pages/company_profile_page.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/about.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/clients_and_investor.dart';

void main() {
  testWidgets(
    'Company Profile Page',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CompanyProfilePage(),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byKey(companyProfileListViewKey), findsOneWidget);
      expect(find.byType(Divider), findsWidgets);
      expect(find.byType(About), findsWidgets);
      await tester.scrollUntilVisible(find.byType(ClientsAndInvestor), 100);
    },
  );
}
