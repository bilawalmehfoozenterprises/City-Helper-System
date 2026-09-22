import 'package:app/src/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'floating_navigation_bar.dart';

class PrimaryNavigationScaffold extends StatelessWidget {
  const PrimaryNavigationScaffold({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(top: true, bottom: false, child: navigationShell),
      bottomNavigationBar: SafeArea(
        top: false,
        minimum: const .fromLTRB(Sizes.p16, 0, Sizes.p16, Sizes.p12),
        child: FloatingNavigationBar(navigationShell: navigationShell),
      ),
    );
  }
}
