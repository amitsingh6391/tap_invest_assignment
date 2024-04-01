import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/grid_box.dart';

ValueKey gridBoxKey = const ValueKey('grid-box');

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            AssetConstants.agrizyLogo,
            height: 90,
            width: 90,
          ),
          const SizedBox(height: 20),
          const DefaultTextStyle(
            style: TextStyle(
              fontSize: 18,
              color: TapInvestColors.stone500,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
            child: Row(
              children: [
                Text(
                  NameConstants.agrizy,
                  style: TextStyle(color: TapInvestColors.black700),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: TapInvestColors.stone400,
                  ),
                ),
                Text(NameConstants.keshavIndustries),
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            NameConstants.companyDes,
            style: TextStyle(
              fontSize: 14,
              color: TapInvestColors.stone500,
              fontWeight: FontWeight.w400,
              height: 1.6,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 16),
          GridBox(
            key: gridBoxKey,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NameConstants.minInvt.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 10,
                      color: TapInvestColors.stone500,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        color: TapInvestColors.stone400,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(text: '₹ '),
                        TextSpan(
                          text: '1',
                          style: TextStyle(color: TapInvestColors.stone700),
                        ),
                        TextSpan(text: NameConstants.lakh),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NameConstants.tenure.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 10,
                      color: TapInvestColors.stone500,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        color: TapInvestColors.stone400,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: '61',
                          style: TextStyle(color: TapInvestColors.stone700),
                        ),
                        TextSpan(text: ' days'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NameConstants.netYield.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 10,
                      color: TapInvestColors.stone500,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        color: TapInvestColors.stone400,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: '13.23',
                          style: TextStyle(color: TapInvestColors.stone700),
                        ),
                        TextSpan(text: ' %'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NameConstants.raised.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 10,
                      color: TapInvestColors.stone500,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        color: TapInvestColors.stone400,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: '70',
                          style: TextStyle(color: TapInvestColors.stone700),
                        ),
                        TextSpan(text: ' %'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
