// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_memory_storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(inMemoryImageStorage)
final inMemoryImageStorageProvider = InMemoryImageStorageProvider._();

final class InMemoryImageStorageProvider
    extends
        $FunctionalProvider<
          InMemoryImageStorage,
          InMemoryImageStorage,
          InMemoryImageStorage
        >
    with $Provider<InMemoryImageStorage> {
  InMemoryImageStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inMemoryImageStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inMemoryImageStorageHash();

  @$internal
  @override
  $ProviderElement<InMemoryImageStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InMemoryImageStorage create(Ref ref) {
    return inMemoryImageStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InMemoryImageStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InMemoryImageStorage>(value),
    );
  }
}

String _$inMemoryImageStorageHash() =>
    r'e474ea2199a614c1e26ae639d9d0097bd2d9783b';
