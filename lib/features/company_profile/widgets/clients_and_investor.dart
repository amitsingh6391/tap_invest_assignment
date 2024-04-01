import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';

class ClientsAndInvestor extends StatelessWidget {
  const ClientsAndInvestor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Text(
              NameConstants.clients,
            ),
          ),
          SvgPicture.asset(
            AssetConstants.companiesLogo,
            height: 90,
            width: 90,
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Text(
              NameConstants.backedBy,
            ),
          ),
          SvgPicture.asset(
            AssetConstants.companiesLogo,
            height: 90,
            width: 90,
          ),
        ],
      ),
    );
  }
}
