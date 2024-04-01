import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/navigation/route.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_theme.dart';

class TapInvestApp extends StatelessWidget {
  const TapInvestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: TapInvestTheme.light,
      routerConfig: TapInvestRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
