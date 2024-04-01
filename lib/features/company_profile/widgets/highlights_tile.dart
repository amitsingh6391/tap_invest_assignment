import 'package:flutter/material.dart';
import 'package:tap_invest_assignment/core/constants/asset_constants.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/widgets/frame_card.dart';

class HighlightsTile extends StatelessWidget {
  const HighlightsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 16, right: 20),
            child: Text(
              NameConstants.highlights,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const FrameCard(
                  icon: AssetConstants.bulb,
                  description: NameConstants.highlightDes,
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const FrameCard(
                  icon: AssetConstants.bulb,
                  description: NameConstants.highlightDes,
                ),
              ),
              const SizedBox(width: 16)
            ]),
          ),
        ],
      ),
    );
  }
}
