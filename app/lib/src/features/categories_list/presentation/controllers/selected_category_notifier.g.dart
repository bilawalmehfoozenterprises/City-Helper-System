// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_category_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedCategoryNotifier)
final selectedCategoryNotifierProvider = SelectedCategoryNotifierProvider._();

final class SelectedCategoryNotifierProvider
    extends $NotifierProvider<SelectedCategoryNotifier, CategoryId?> {
  SelectedCategoryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCategoryNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCategoryNotifierHash();

  @$internal
  @override
  SelectedCategoryNotifier create() => SelectedCategoryNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryId? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryId?>(value),
    );
  }
}

String _$selectedCategoryNotifierHash() =>
    r'20b02b373dd27d08e06bbc9ad26d920a4b399f61';

abstract class _$SelectedCategoryNotifier extends $Notifier<CategoryId?> {
  CategoryId? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CategoryId?, CategoryId?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CategoryId?, CategoryId?>,
              CategoryId?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
