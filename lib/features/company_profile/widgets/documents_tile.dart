import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/widgets/frame_card.dart';

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            NameConstants.documents,
          ),
          const SizedBox(height: 16),
          FrameCard(
            title: NameConstants.idContract,
            icon: AssetConstants.doc,
            description: NameConstants.docDes,
            trailingIcon: Material(
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                child: SvgPicture.asset(AssetConstants.download),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FrameCard(
            title: NameConstants.companyPitchDeck,
            icon: AssetConstants.pitchDeck,
            description: NameConstants.companyPitchDes,
            trailingIcon: Material(
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                child: SvgPicture.asset(AssetConstants.download),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
