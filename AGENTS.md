# Repository Agent Rules

## Flutter UI architecture

- Use Flutter Material widgets and `ThemeData` as the component system for this project. Do not replace Material with shadcn or introduce a second UI component framework unless explicitly requested.
- Apply the product styling through the shared theme in `app/lib/src/themes/`, especially `color.dart`, `light_theme.dart`, and `theme_helpers.dart`. Do not rely on Flutter's default green, blue, purple, or seeded component colors.
- Define component appearance centrally in `ThemeData`: dialogs, bottom sheets, inputs, buttons, cards, menus, chips, sliders, switches, checkboxes, radios, progress indicators, snackbars, navigation, dividers, tooltips, and app bars.
- Use semantic theme helpers such as `surfaceBorderRadius()`, `sheetBorderRadius()`, and `pillBorderRadius()`. Do not add generic `small`, `medium`, or `large` design-token names when the value has a component meaning.
- Use `Theme.of(context)` or the project's theme extensions for colors and text. Avoid direct UI color literals and avoid local overrides that bypass the shared theme.

## Widget organization

- Keep every widget file small and focused. A file should normally contain one primary widget and its closely related immutable data only.
- Move reusable child widgets into separate files instead of growing screen files with private widget classes.
- Prefer dedicated widgets over large private `_build...` methods. Use helper methods only for small, purely local fragments that have no independent state or interaction.
- Keep screen widgets responsible for composition and state flow; keep visual child widgets responsible for their own layout and interaction.
- Reuse `app/lib/src/core/constants/app_sizes.dart` for spacing and dimensions.
- Use Dart 3 shorthand where the inferred type supports it, including constructor and enum/property shorthand. Do not force shorthand where the API does not support it.

## Product direction

- The current product is a mobile-first hostel discovery app for students.
- The visual system is monochrome: charcoal/black, white, off-white, and grey. Green is not a brand or action color. Amber should not be used for decorative UI.
- Keep mobile navigation bottom-only. The navigation uses a custom Material-based widget styled through the shared theme and semantic helpers.
- Prefer local fixtures and repository boundaries while the discovery UI is being rebuilt.

## Verification

- After Flutter changes, run `dart format` on changed Dart files.
- Run `flutter analyze` for every UI or theme change.
- Run the relevant tests and a build when changing shared theme, routing, or app-shell code.
- Run `git diff --check` before reporting completion.
- Do not commit unless explicitly requested.
