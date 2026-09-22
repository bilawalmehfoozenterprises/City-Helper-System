import 'package:app/src/core/utils/theme_extension.dart';
import 'package:flutter/material.dart';

class NavigationSelectionIndicator extends StatelessWidget {
  const NavigationSelectionIndicator({
    required this.currentIndex,
    required this.itemCount,
    super.key,
  });

  final int currentIndex;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = constraints.maxWidth / itemCount;
        final alignment = Alignment(
          -1 + (2 * currentIndex / (itemCount - 1)),
          0,
        );

        return AnimatedAlign(
          alignment: alignment,
          duration: const Duration(milliseconds: 240),
          curve: Curves.easeOutCubic,
          child: SizedBox(
            width: itemWidth,
            height: double.infinity,
            child: Center(
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  shape: .circle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
