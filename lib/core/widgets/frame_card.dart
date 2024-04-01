import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';

class FrameCard extends StatelessWidget {
  const FrameCard({
    super.key,
    required this.icon,
    this.title,
    required this.description,
    this.trailingIcon,
  });

  final String icon;
  final String? title;
  final String description;
  final Widget? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: TapInvestColors.stone200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(icon),
          const SizedBox(height: 16),
          Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null) ...{
                      Text(
                        title!,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 1.6,
                          fontWeight: FontWeight.w500,
                          color: TapInvestColors.stone700,
                        ),
                      ),
                      const SizedBox(height: 4),
                    },
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                        color: TapInvestColors.stone500,
                      ),
                    ),
                  ],
                ),
              ),
              if (trailingIcon != null) ...{
                const SizedBox(width: 10),
                trailingIcon!,
              }
            ],
          )
        ],
      ),
    );
  }
}
