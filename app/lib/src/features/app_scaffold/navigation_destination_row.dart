import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'navigation_item.dart';

typedef NavigationDestinationData = ({IconData icon, String label});

class NavigationDestinationRow extends StatelessWidget {
  const NavigationDestinationRow({
    required this.navigationShell,
    required this.destinations,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final List<NavigationDestinationData> destinations;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var index = 0; index < destinations.length; index++)
          Expanded(
            child: RepaintBoundary(
              child: PrimaryNavigationItem(
                icon: destinations[index].icon,
                label: destinations[index].label,
                selected: index == navigationShell.currentIndex,
                onTap: () => navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
