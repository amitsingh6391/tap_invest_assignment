import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';
import 'package:tap_invest_assignment/features/company_profile/widgets/grid_box.dart';

enum KeyMetricesType { funding, traction, financials, competition }

class KeyMetrics extends StatefulWidget {
  const KeyMetrics({super.key});

  @override
  State<KeyMetrics> createState() => _KeyMetricsSectionState();
}

class _KeyMetricsSectionState extends State<KeyMetrics> {
  String _selectedFilter = KeyMetricesType.financials.name;

  final List<KeyMetricesType> _filters = [
    KeyMetricesType.funding,
    KeyMetricesType.traction,
    KeyMetricesType.financials,
    KeyMetricesType.competition,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 16,
            ),
            child: Text(
              NameConstants.keyMetrics,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: _filters.map(
                (label) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      selected: _selectedFilter == label.name,
                      onSelected: (_) {
                        setState(() {
                          _selectedFilter = label.name;
                        });
                      },
                      label: Text(
                        label.name.toUpperCase(),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 20,
              right: 20,
            ),
            child: GridBox(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      NameConstants.activeDeals.toUpperCase(),
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
                            text: '6',
                            style: TextStyle(color: TapInvestColors.stone700),
                          ),
                          TextSpan(text: ' of 18'),
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
                          TextSpan(text: '₹ '),
                          TextSpan(
                            text: '6.94',
                            style: TextStyle(color: TapInvestColors.stone700),
                          ),
                          TextSpan(text: ' Cr'),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      NameConstants.maturedDeals.toUpperCase(),
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
                            text: '12',
                            style: TextStyle(color: TapInvestColors.stone700),
                          ),
                          TextSpan(text: ' of 18'),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      NameConstants.onTimePayment.toUpperCase(),
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
                            text: '100',
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
          ),
        ],
      ),
    );
  }
}
