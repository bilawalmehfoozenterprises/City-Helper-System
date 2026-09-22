// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_entities_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PopularEntitiesNotifier)
final popularEntitiesNotifierProvider = PopularEntitiesNotifierFamily._();

final class PopularEntitiesNotifierProvider
    extends $NotifierProvider<PopularEntitiesNotifier, EntitiesPaginatedState> {
  PopularEntitiesNotifierProvider._({
    required PopularEntitiesNotifierFamily super.from,
    required CategoryId super.argument,
  }) : super(
         retry: null,
         name: r'popularEntitiesNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$popularEntitiesNotifierHash();

  @override
  String toString() {
    return r'popularEntitiesNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PopularEntitiesNotifier create() => PopularEntitiesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EntitiesPaginatedState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EntitiesPaginatedState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PopularEntitiesNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$popularEntitiesNotifierHash() =>
    r'b272984a34083dc25b231445175d0add1ee8a061';

final class PopularEntitiesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PopularEntitiesNotifier,
          EntitiesPaginatedState,
          EntitiesPaginatedState,
          EntitiesPaginatedState,
          CategoryId
        > {
  PopularEntitiesNotifierFamily._()
    : super(
        retry: null,
        name: r'popularEntitiesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  PopularEntitiesNotifierProvider call(CategoryId categoryId) =>
      PopularEntitiesNotifierProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'popularEntitiesNotifierProvider';
}

abstract class _$PopularEntitiesNotifier
    extends $Notifier<EntitiesPaginatedState> {
  late final _$args = ref.$arg as CategoryId;
  CategoryId get categoryId => _$args;

  EntitiesPaginatedState build(CategoryId categoryId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<EntitiesPaginatedState, EntitiesPaginatedState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EntitiesPaginatedState, EntitiesPaginatedState>,
              EntitiesPaginatedState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
