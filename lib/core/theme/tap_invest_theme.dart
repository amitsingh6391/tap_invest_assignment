import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';

class TapInvestTheme {
  static final light = ThemeData(
    primaryColor: TapInvestColors.green700,
    scaffoldBackgroundColor: TapInvestColors.scaffold,
    dividerTheme: const DividerThemeData(
      thickness: 1,
      space: 1,
      color: TapInvestColors.stone200,
    ),
    appBarTheme: AppBarTheme(
      titleSpacing: 24,
      centerTitle: false,
      color: TapInvestColors.scaffold,
      surfaceTintColor: TapInvestColors.scaffold,
      iconTheme: const IconThemeData(color: TapInvestColors.green700),
      titleTextStyle: GoogleFonts.inter(
        height: 1.5,
        fontSize: 14,
        color: TapInvestColors.green700,
        fontWeight: FontWeight.w500,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return TapInvestColors.stone200;
          }
          if (states.contains(MaterialState.hovered)) {
            return TapInvestColors.green700.withOpacity(0.08);
          }
          return TapInvestColors.green700.withOpacity(0.12);
        }),
      ),
    ),
    chipTheme: ChipThemeData(
      side: BorderSide.none,
      backgroundColor: TapInvestColors.stone200,
      selectedColor: TapInvestColors.green700,
      showCheckmark: false,
      labelStyle: const TextStyle(
        height: 1.5,
        letterSpacing: 0.5,
        fontSize: 10,
        color: TapInvestColors.stone500,
        fontWeight: FontWeight.bold,
      ),
      secondaryLabelStyle: const TextStyle(
        height: 1.5,
        letterSpacing: 0.5,
        fontSize: 10,
        color: TapInvestColors.white,
        fontWeight: FontWeight.bold,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
  );
}
