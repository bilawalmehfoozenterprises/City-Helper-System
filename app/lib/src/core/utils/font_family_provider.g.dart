// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_family_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fontFamily)
final fontFamilyProvider = FontFamilyProvider._();

final class FontFamilyProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  FontFamilyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fontFamilyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fontFamilyHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return fontFamily(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$fontFamilyHash() => r'b3f18cb76cadc230d581e2dec78a5f842b0517b8';
