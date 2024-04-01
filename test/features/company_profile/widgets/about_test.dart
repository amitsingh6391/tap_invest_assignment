import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/about.dart';

void main() {
  testWidgets(
    'Should render About section accurately ',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: About(),
        ),
      );

      await tester.pump();
      expect(find.byType(SvgPicture), findsOneWidget);
      expect(find.text(NameConstants.agrizy), findsOneWidget);
      expect(find.text(NameConstants.keshavIndustries), findsOneWidget);
      expect(find.text(NameConstants.companyDes), findsOneWidget);
      expect(find.byKey(gridBoxKey), findsOneWidget);
      expect(find.text(NameConstants.netYield.toUpperCase()), findsOneWidget);
    },
  );
}
