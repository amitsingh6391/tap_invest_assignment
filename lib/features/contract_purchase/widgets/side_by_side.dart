import 'package:flutter/material.dart';

class SideBySideWidget extends StatelessWidget {
  const SideBySideWidget({
    super.key,
    this.padding,
    required this.leftChild,
    required this.rightChild,
  });

  final EdgeInsets? padding;
  final Widget leftChild;
  final Widget rightChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(20),
      child: Row(
        children: [leftChild, const Spacer(), rightChild],
      ),
    );
  }
}
