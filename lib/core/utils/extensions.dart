import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension StringExtension on String {
  num extractNumbers() {
    return int.tryParse(replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
  }
}

extension NumExtension on num {
  bool isValueWithinRange(num min, num max) => this >= min && this <= max;
}

extension GoRouterExtension on GoRouter {
  // Navigate back to a specific route
  void popUntilPath(BuildContext context, String ancestorPath) {
    while (routerDelegate.currentConfiguration.matches.last.matchedLocation !=
        ancestorPath) {
      if (!context.canPop()) {
        return;
      }
      context.pop();
    }
  }
}
