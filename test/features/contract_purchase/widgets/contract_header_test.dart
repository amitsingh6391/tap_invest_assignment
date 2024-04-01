import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/features/contract_purchase/widgets/contract_header.dart';

void main() {
  testWidgets(
    'Should render Contract header section accurately ',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ContractHeader(),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text(NameConstants.purchasing), findsOneWidget);
      expect(find.byIcon(Icons.arrow_back_rounded), findsOneWidget);
    },
  );
}
