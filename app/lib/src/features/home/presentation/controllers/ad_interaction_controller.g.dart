// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_interaction_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdInteractionNotifier)
final adInteractionNotifierProvider = AdInteractionNotifierProvider._();

final class AdInteractionNotifierProvider
    extends $AsyncNotifierProvider<AdInteractionNotifier, void> {
  AdInteractionNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adInteractionNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adInteractionNotifierHash();

  @$internal
  @override
  AdInteractionNotifier create() => AdInteractionNotifier();
}

String _$adInteractionNotifierHash() =>
    r'8f8d6516f664b1480d43709e183361fca7f61c31';

abstract class _$AdInteractionNotifier extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
