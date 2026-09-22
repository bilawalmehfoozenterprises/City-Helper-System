import 'package:app/src/features/app_scaffold/navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

void main() {
  testWidgets('renders selected navigation item and handles taps', (
    tester,
  ) async {
    var tapCount = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PrimaryNavigationItem(
            icon: Symbols.home_rounded,
            label: 'Home',
            selected: true,
            onTap: () => tapCount++,
          ),
        ),
      ),
    );

    expect(find.bySemanticsLabel('Home'), findsOneWidget);
    expect(find.byIcon(Symbols.home_rounded), findsOneWidget);

    await tester.tap(find.bySemanticsLabel('Home'));
    expect(tapCount, 1);
  });

  testWidgets('renders inactive navigation item without selected styling', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PrimaryNavigationItem(
            icon: Symbols.apartment_rounded,
            label: 'Hostels',
            selected: false,
            onTap: () {},
          ),
        ),
      ),
    );

    expect(find.byIcon(Symbols.apartment_rounded), findsOneWidget);
  });
}
