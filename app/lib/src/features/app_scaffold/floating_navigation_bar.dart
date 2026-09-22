import 'package:app/src/core/constants/app_sizes.dart';
import 'package:app/src/core/utils/theme_extension.dart';
import 'package:app/src/themes/theme_helpers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import 'navigation_destination_row.dart';
import 'navigation_selection_indicator.dart';

class FloatingNavigationBar extends StatelessWidget {
  const FloatingNavigationBar({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  static const List<NavigationDestinationData> _destinations = [
    (icon: Symbols.home_rounded, label: 'Home'),
    (icon: Symbols.apartment_rounded, label: 'Hostels'),
    (icon: Symbols.explore_rounded, label: 'Areas'),
    (icon: Symbols.person_rounded, label: 'You'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const .symmetric(horizontal: Sizes.p8),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        border: Border.all(color: context.colorScheme.outline),
        borderRadius: ThemeHelpers.pillBorderRadius(),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: .12),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          NavigationSelectionIndicator(
            currentIndex: navigationShell.currentIndex,
            itemCount: _destinations.length,
          ),
          NavigationDestinationRow(
            navigationShell: navigationShell,
            destinations: _destinations,
          ),
        ],
      ),
    );
  }
}
