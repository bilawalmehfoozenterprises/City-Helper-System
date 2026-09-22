// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_id_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VerificationIdController)
final verificationIdControllerProvider = VerificationIdControllerProvider._();

final class VerificationIdControllerProvider
    extends $NotifierProvider<VerificationIdController, String?> {
  VerificationIdControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'verificationIdControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$verificationIdControllerHash();

  @$internal
  @override
  VerificationIdController create() => VerificationIdController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$verificationIdControllerHash() =>
    r'7b88d1b5cc2161f8847c2c47eefbe21040dc3825';

abstract class _$VerificationIdController extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
