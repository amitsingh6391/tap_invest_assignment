import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_invest_assignment/core/constants/name_constants.dart';
import 'package:tap_invest_assignment/core/theme/tap_invest_colors.dart';

const double _sliderMinimumFillWidth = 41.0;

class SwipeToPayButton extends StatefulWidget {
  const SwipeToPayButton({
    super.key,
    this.completionFraction = 0.6,
    required this.validator,
    required this.onComplete,
  }) : assert(completionFraction >= 0 && completionFraction <= 1);

  final double completionFraction;
  final VoidCallback onComplete;
  final bool Function() validator;

  @override
  State<SwipeToPayButton> createState() => _SwipeToPayButtonState();
}

class _SwipeToPayButtonState extends State<SwipeToPayButton> {
  final _sliderFilledWidthNotifier =
      ValueNotifier<double>(_sliderMinimumFillWidth);

  void _validateCompletion() {
    bool isValid = widget.validator();
    if (isValid) {
      widget.onComplete();
    } else {
      _sliderFilledWidthNotifier.value = _sliderMinimumFillWidth;
    }
  }

  Future<void> _onHorizontalDragUpdate(
      DragUpdateDetails details, double sliderWidth) async {
    final width =
        details.globalPosition.dx.clamp(_sliderMinimumFillWidth, sliderWidth);
    _sliderFilledWidthNotifier.value = width;
    await HapticFeedback.selectionClick();
  }

  void _onHorizontalDragEnd(DragEndDetails details, double sliderWidth) {
    if (_sliderFilledWidthNotifier.value <
        (sliderWidth * widget.completionFraction)) {
      _sliderFilledWidthNotifier.value = _sliderMinimumFillWidth;
    } else {
      _sliderFilledWidthNotifier.value = sliderWidth;
    }

    if (_sliderFilledWidthNotifier.value == sliderWidth) {
      _validateCompletion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: TapInvestColors.stone200,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 2,
          color: TapInvestColors.zinc200,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double sliderWidth = constraints.maxWidth;

          return Stack(
            children: [
              const Center(
                child: Text(
                  NameConstants.swipeToPay,
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.5,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GestureDetector(
                onHorizontalDragEnd: (details) {
                  _onHorizontalDragEnd(details, sliderWidth);
                },
                onHorizontalDragUpdate: (details) {
                  _onHorizontalDragUpdate(details, sliderWidth);
                },
                child: ValueListenableBuilder(
                  valueListenable: _sliderFilledWidthNotifier,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      color: TapInvestColors.white,
                    ),
                  ),
                  builder: (_, width, child) {
                    return AnimatedContainer(
                      width: width,
                      height: double.infinity,
                      curve: Curves.decelerate,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        color: TapInvestColors.green700,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      duration: const Duration(milliseconds: 200),
                      child: child!,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
