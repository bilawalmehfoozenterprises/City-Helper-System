import 'package:app/src/core/utils/theme_extension.dart';
import 'package:flutter/material.dart';

class PrimaryNavigationItem extends StatelessWidget {
  const PrimaryNavigationItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
    super.key,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final foreground = selected
        ? context.colorScheme.onPrimary
        : context.colorScheme.onSurfaceVariant;

    return Semantics(
      button: true,
      selected: selected,
      label: label,
      child: Tooltip(
        message: label,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOut,
              width: 48,
              height: 48,
              decoration: const BoxDecoration(shape: .circle),
              child: SizedBox(
                width: 48,
                height: 48,
                child: Icon(
                  icon,
                  color: foreground,
                  fill: selected ? 1 : 0,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
