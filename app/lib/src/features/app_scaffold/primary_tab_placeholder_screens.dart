import 'package:app/src/features/auth/data/auth_repository.dart';
import 'package:app/src/features/auth/presentation/account_screen.dart';
import 'package:app/src/features/auth/presentation/auth_flow_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/src/core/constants/app_sizes.dart';
import 'package:app/src/core/utils/theme_extension.dart';

class HostelsScreen extends StatelessWidget {
  const HostelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _TabPlaceholder(
      icon: Icons.hotel_outlined,
      title: 'Hostels',
      message: 'Hostel listings will live here.',
    );
  }
}

class AreasScreen extends StatelessWidget {
  const AreasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _TabPlaceholder(
      icon: Icons.explore_outlined,
      title: 'Areas',
      message: 'Explore student areas and universities here.',
    );
  }
}

class YouScreen extends ConsumerWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoggedIn = ref.watch(authStateChangesProvider).value != null;
    return isLoggedIn ? const AccountScreen() : AuthFlowScreen();
  }
}

class _TabPlaceholder extends StatelessWidget {
  const _TabPlaceholder({
    required this.icon,
    required this.title,
    required this.message,
  });

  final IconData icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: Sizes.p48, color: context.colorScheme.primary),
            gapH16,
            Text(title, style: context.textTheme.headlineSmall),
            gapH8,
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
