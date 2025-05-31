// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_investment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedInvestmentDaoHash() =>
    r'd5feecdddbac40b7e64b17d78b98b4355653c993';

/// See also [sharedInvestmentDao].
@ProviderFor(sharedInvestmentDao)
final sharedInvestmentDaoProvider =
    AutoDisposeProvider<SharedInvestmentDao>.internal(
  sharedInvestmentDao,
  name: r'sharedInvestmentDaoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedInvestmentDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedInvestmentDaoRef = AutoDisposeProviderRef<SharedInvestmentDao>;
String _$sharedInvestmentRepositoryHash() =>
    r'b1ffcf1e060636c3d21e50972f5a5dd8afe47d7f';

/// See also [sharedInvestmentRepository].
@ProviderFor(sharedInvestmentRepository)
final sharedInvestmentRepositoryProvider =
    AutoDisposeProvider<SharedInvestmentRepository>.internal(
  sharedInvestmentRepository,
  name: r'sharedInvestmentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedInvestmentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedInvestmentRepositoryRef
    = AutoDisposeProviderRef<SharedInvestmentRepository>;
String _$sharedInvestmentHash() => r'c8cfc4e9489f54db3f2ce37837057a9a8efd7716';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [sharedInvestment].
@ProviderFor(sharedInvestment)
const sharedInvestmentProvider = SharedInvestmentFamily();

/// See also [sharedInvestment].
class SharedInvestmentFamily extends Family<AsyncValue<SharedInvestment?>> {
  /// See also [sharedInvestment].
  const SharedInvestmentFamily();

  /// See also [sharedInvestment].
  SharedInvestmentProvider call(
    String id,
  ) {
    return SharedInvestmentProvider(
      id,
    );
  }

  @override
  SharedInvestmentProvider getProviderOverride(
    covariant SharedInvestmentProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sharedInvestmentProvider';
}

/// See also [sharedInvestment].
class SharedInvestmentProvider
    extends AutoDisposeFutureProvider<SharedInvestment?> {
  /// See also [sharedInvestment].
  SharedInvestmentProvider(
    String id,
  ) : this._internal(
          (ref) => sharedInvestment(
            ref as SharedInvestmentRef,
            id,
          ),
          from: sharedInvestmentProvider,
          name: r'sharedInvestmentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sharedInvestmentHash,
          dependencies: SharedInvestmentFamily._dependencies,
          allTransitiveDependencies:
              SharedInvestmentFamily._allTransitiveDependencies,
          id: id,
        );

  SharedInvestmentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<SharedInvestment?> Function(SharedInvestmentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SharedInvestmentProvider._internal(
        (ref) => create(ref as SharedInvestmentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SharedInvestment?> createElement() {
    return _SharedInvestmentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SharedInvestmentProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SharedInvestmentRef on AutoDisposeFutureProviderRef<SharedInvestment?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SharedInvestmentProviderElement
    extends AutoDisposeFutureProviderElement<SharedInvestment?>
    with SharedInvestmentRef {
  _SharedInvestmentProviderElement(super.provider);

  @override
  String get id => (origin as SharedInvestmentProvider).id;
}

String _$sharedInvestmentStatsHash() =>
    r'5522d714649c34e75e8a21bbc44c7838f036eb98';

/// See also [sharedInvestmentStats].
@ProviderFor(sharedInvestmentStats)
const sharedInvestmentStatsProvider = SharedInvestmentStatsFamily();

/// See also [sharedInvestmentStats].
class SharedInvestmentStatsFamily
    extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [sharedInvestmentStats].
  const SharedInvestmentStatsFamily();

  /// See also [sharedInvestmentStats].
  SharedInvestmentStatsProvider call(
    String id,
  ) {
    return SharedInvestmentStatsProvider(
      id,
    );
  }

  @override
  SharedInvestmentStatsProvider getProviderOverride(
    covariant SharedInvestmentStatsProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sharedInvestmentStatsProvider';
}

/// See also [sharedInvestmentStats].
class SharedInvestmentStatsProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// See also [sharedInvestmentStats].
  SharedInvestmentStatsProvider(
    String id,
  ) : this._internal(
          (ref) => sharedInvestmentStats(
            ref as SharedInvestmentStatsRef,
            id,
          ),
          from: sharedInvestmentStatsProvider,
          name: r'sharedInvestmentStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sharedInvestmentStatsHash,
          dependencies: SharedInvestmentStatsFamily._dependencies,
          allTransitiveDependencies:
              SharedInvestmentStatsFamily._allTransitiveDependencies,
          id: id,
        );

  SharedInvestmentStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(SharedInvestmentStatsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SharedInvestmentStatsProvider._internal(
        (ref) => create(ref as SharedInvestmentStatsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>> createElement() {
    return _SharedInvestmentStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SharedInvestmentStatsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SharedInvestmentStatsRef
    on AutoDisposeFutureProviderRef<Map<String, dynamic>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SharedInvestmentStatsProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>>
    with SharedInvestmentStatsRef {
  _SharedInvestmentStatsProviderElement(super.provider);

  @override
  String get id => (origin as SharedInvestmentStatsProvider).id;
}

String _$userSharedInvestmentStatsHash() =>
    r'6aeda62cafb55b3245302d29b7a6ba120de93d8b';

/// See also [userSharedInvestmentStats].
@ProviderFor(userSharedInvestmentStats)
const userSharedInvestmentStatsProvider = UserSharedInvestmentStatsFamily();

/// See also [userSharedInvestmentStats].
class UserSharedInvestmentStatsFamily
    extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [userSharedInvestmentStats].
  const UserSharedInvestmentStatsFamily();

  /// See also [userSharedInvestmentStats].
  UserSharedInvestmentStatsProvider call(
    String sharedInvestmentId,
    String userId,
  ) {
    return UserSharedInvestmentStatsProvider(
      sharedInvestmentId,
      userId,
    );
  }

  @override
  UserSharedInvestmentStatsProvider getProviderOverride(
    covariant UserSharedInvestmentStatsProvider provider,
  ) {
    return call(
      provider.sharedInvestmentId,
      provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userSharedInvestmentStatsProvider';
}

/// See also [userSharedInvestmentStats].
class UserSharedInvestmentStatsProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// See also [userSharedInvestmentStats].
  UserSharedInvestmentStatsProvider(
    String sharedInvestmentId,
    String userId,
  ) : this._internal(
          (ref) => userSharedInvestmentStats(
            ref as UserSharedInvestmentStatsRef,
            sharedInvestmentId,
            userId,
          ),
          from: userSharedInvestmentStatsProvider,
          name: r'userSharedInvestmentStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userSharedInvestmentStatsHash,
          dependencies: UserSharedInvestmentStatsFamily._dependencies,
          allTransitiveDependencies:
              UserSharedInvestmentStatsFamily._allTransitiveDependencies,
          sharedInvestmentId: sharedInvestmentId,
          userId: userId,
        );

  UserSharedInvestmentStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sharedInvestmentId,
    required this.userId,
  }) : super.internal();

  final String sharedInvestmentId;
  final String userId;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(
            UserSharedInvestmentStatsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserSharedInvestmentStatsProvider._internal(
        (ref) => create(ref as UserSharedInvestmentStatsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sharedInvestmentId: sharedInvestmentId,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>> createElement() {
    return _UserSharedInvestmentStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserSharedInvestmentStatsProvider &&
        other.sharedInvestmentId == sharedInvestmentId &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sharedInvestmentId.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserSharedInvestmentStatsRef
    on AutoDisposeFutureProviderRef<Map<String, dynamic>> {
  /// The parameter `sharedInvestmentId` of this provider.
  String get sharedInvestmentId;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserSharedInvestmentStatsProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>>
    with UserSharedInvestmentStatsRef {
  _UserSharedInvestmentStatsProviderElement(super.provider);

  @override
  String get sharedInvestmentId =>
      (origin as UserSharedInvestmentStatsProvider).sharedInvestmentId;
  @override
  String get userId => (origin as UserSharedInvestmentStatsProvider).userId;
}

String _$allSharedInvestmentsHash() =>
    r'fdc30430faa6bd1d0f70459d4d34cc4abf788abb';

/// See also [allSharedInvestments].
@ProviderFor(allSharedInvestments)
final allSharedInvestmentsProvider =
    AutoDisposeFutureProvider<List<SharedInvestment>>.internal(
  allSharedInvestments,
  name: r'allSharedInvestmentsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allSharedInvestmentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AllSharedInvestmentsRef
    = AutoDisposeFutureProviderRef<List<SharedInvestment>>;
String _$sharedInvestmentNotifierHash() =>
    r'c65898f23fe7cfc60b5c31a7818488d7c8fe0e0d';

/// See also [SharedInvestmentNotifier].
@ProviderFor(SharedInvestmentNotifier)
final sharedInvestmentNotifierProvider = AutoDisposeAsyncNotifierProvider<
    SharedInvestmentNotifier, List<SharedInvestment>>.internal(
  SharedInvestmentNotifier.new,
  name: r'sharedInvestmentNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedInvestmentNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SharedInvestmentNotifier
    = AutoDisposeAsyncNotifier<List<SharedInvestment>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
