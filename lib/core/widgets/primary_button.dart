import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isButtonPressed = false;

  void _toggleButtonPressed() {
    setState(() {
      _isButtonPressed = !_isButtonPressed;
    });
  }

  Future<void> _onButtonTap() async {
    widget.onPressed();
    await HapticFeedback.lightImpact();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onButtonTap,
      onTapDown: (_) => _toggleButtonPressed(),
      onTapUp: (_) => _toggleButtonPressed(),
      onTapCancel: _toggleButtonPressed,
      child: AnimatedScale(
        scale: 1,
        duration: const Duration(milliseconds: 200),
        child: Container(
          decoration: BoxDecoration(
            color: TapInvestColors.green700,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 26,
                ),
                color: const Color(0xFF16A34A),
                child: Text(
                  widget.label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: TapInvestColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ).animate(value: 1, target: _isButtonPressed ? 0.96 : 1).scaleXY().fade();
  }
}
