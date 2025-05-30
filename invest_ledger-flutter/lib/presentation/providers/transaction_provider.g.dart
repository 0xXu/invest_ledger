// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transactionDaoHash() => r'774b1aa05c5b298ea16dc3d9a86babdb88b96622';

/// See also [transactionDao].
@ProviderFor(transactionDao)
final transactionDaoProvider = AutoDisposeProvider<TransactionDao>.internal(
  transactionDao,
  name: r'transactionDaoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TransactionDaoRef = AutoDisposeProviderRef<TransactionDao>;
String _$transactionRepositoryHash() =>
    r'24bc077f410dc5e0866a578310122e895601b6cc';

/// See also [transactionRepository].
@ProviderFor(transactionRepository)
final transactionRepositoryProvider =
    AutoDisposeProvider<TransactionRepository>.internal(
  transactionRepository,
  name: r'transactionRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TransactionRepositoryRef
    = AutoDisposeProviderRef<TransactionRepository>;
String _$transactionStatsHash() => r'5ed199e712a2ae67949d8042fb27de1504c88269';

/// See also [transactionStats].
@ProviderFor(transactionStats)
final transactionStatsProvider =
    AutoDisposeFutureProvider<Map<String, dynamic>>.internal(
  transactionStats,
  name: r'transactionStatsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionStatsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TransactionStatsRef
    = AutoDisposeFutureProviderRef<Map<String, dynamic>>;
String _$transactionHash() => r'2f4ac8fc3c33282415b317f2118a92dd1e5d281e';

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

/// See also [transaction].
@ProviderFor(transaction)
const transactionProvider = TransactionFamily();

/// See also [transaction].
class TransactionFamily extends Family<AsyncValue<Transaction?>> {
  /// See also [transaction].
  const TransactionFamily();

  /// See also [transaction].
  TransactionProvider call(
    String transactionId,
  ) {
    return TransactionProvider(
      transactionId,
    );
  }

  @override
  TransactionProvider getProviderOverride(
    covariant TransactionProvider provider,
  ) {
    return call(
      provider.transactionId,
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
  String? get name => r'transactionProvider';
}

/// See also [transaction].
class TransactionProvider extends AutoDisposeFutureProvider<Transaction?> {
  /// See also [transaction].
  TransactionProvider(
    String transactionId,
  ) : this._internal(
          (ref) => transaction(
            ref as TransactionRef,
            transactionId,
          ),
          from: transactionProvider,
          name: r'transactionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionHash,
          dependencies: TransactionFamily._dependencies,
          allTransitiveDependencies:
              TransactionFamily._allTransitiveDependencies,
          transactionId: transactionId,
        );

  TransactionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.transactionId,
  }) : super.internal();

  final String transactionId;

  @override
  Override overrideWith(
    FutureOr<Transaction?> Function(TransactionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TransactionProvider._internal(
        (ref) => create(ref as TransactionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        transactionId: transactionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Transaction?> createElement() {
    return _TransactionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionProvider && other.transactionId == transactionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, transactionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TransactionRef on AutoDisposeFutureProviderRef<Transaction?> {
  /// The parameter `transactionId` of this provider.
  String get transactionId;
}

class _TransactionProviderElement
    extends AutoDisposeFutureProviderElement<Transaction?> with TransactionRef {
  _TransactionProviderElement(super.provider);

  @override
  String get transactionId => (origin as TransactionProvider).transactionId;
}

String _$transactionsByStockHash() =>
    r'fac96ff0dbdff2de141affcdd37c2d234eb95220';

/// See also [transactionsByStock].
@ProviderFor(transactionsByStock)
const transactionsByStockProvider = TransactionsByStockFamily();

/// See also [transactionsByStock].
class TransactionsByStockFamily extends Family<AsyncValue<List<Transaction>>> {
  /// See also [transactionsByStock].
  const TransactionsByStockFamily();

  /// See also [transactionsByStock].
  TransactionsByStockProvider call(
    String stockCode,
  ) {
    return TransactionsByStockProvider(
      stockCode,
    );
  }

  @override
  TransactionsByStockProvider getProviderOverride(
    covariant TransactionsByStockProvider provider,
  ) {
    return call(
      provider.stockCode,
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
  String? get name => r'transactionsByStockProvider';
}

/// See also [transactionsByStock].
class TransactionsByStockProvider
    extends AutoDisposeFutureProvider<List<Transaction>> {
  /// See also [transactionsByStock].
  TransactionsByStockProvider(
    String stockCode,
  ) : this._internal(
          (ref) => transactionsByStock(
            ref as TransactionsByStockRef,
            stockCode,
          ),
          from: transactionsByStockProvider,
          name: r'transactionsByStockProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionsByStockHash,
          dependencies: TransactionsByStockFamily._dependencies,
          allTransitiveDependencies:
              TransactionsByStockFamily._allTransitiveDependencies,
          stockCode: stockCode,
        );

  TransactionsByStockProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stockCode,
  }) : super.internal();

  final String stockCode;

  @override
  Override overrideWith(
    FutureOr<List<Transaction>> Function(TransactionsByStockRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TransactionsByStockProvider._internal(
        (ref) => create(ref as TransactionsByStockRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stockCode: stockCode,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Transaction>> createElement() {
    return _TransactionsByStockProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionsByStockProvider && other.stockCode == stockCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stockCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TransactionsByStockRef
    on AutoDisposeFutureProviderRef<List<Transaction>> {
  /// The parameter `stockCode` of this provider.
  String get stockCode;
}

class _TransactionsByStockProviderElement
    extends AutoDisposeFutureProviderElement<List<Transaction>>
    with TransactionsByStockRef {
  _TransactionsByStockProviderElement(super.provider);

  @override
  String get stockCode => (origin as TransactionsByStockProvider).stockCode;
}

String _$transactionsByDateRangeHash() =>
    r'52ecdc1534a2f2ba8e1d09a37e0118855045f374';

/// See also [transactionsByDateRange].
@ProviderFor(transactionsByDateRange)
const transactionsByDateRangeProvider = TransactionsByDateRangeFamily();

/// See also [transactionsByDateRange].
class TransactionsByDateRangeFamily
    extends Family<AsyncValue<List<Transaction>>> {
  /// See also [transactionsByDateRange].
  const TransactionsByDateRangeFamily();

  /// See also [transactionsByDateRange].
  TransactionsByDateRangeProvider call({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    return TransactionsByDateRangeProvider(
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  TransactionsByDateRangeProvider getProviderOverride(
    covariant TransactionsByDateRangeProvider provider,
  ) {
    return call(
      startDate: provider.startDate,
      endDate: provider.endDate,
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
  String? get name => r'transactionsByDateRangeProvider';
}

/// See also [transactionsByDateRange].
class TransactionsByDateRangeProvider
    extends AutoDisposeFutureProvider<List<Transaction>> {
  /// See also [transactionsByDateRange].
  TransactionsByDateRangeProvider({
    required DateTime startDate,
    required DateTime endDate,
  }) : this._internal(
          (ref) => transactionsByDateRange(
            ref as TransactionsByDateRangeRef,
            startDate: startDate,
            endDate: endDate,
          ),
          from: transactionsByDateRangeProvider,
          name: r'transactionsByDateRangeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionsByDateRangeHash,
          dependencies: TransactionsByDateRangeFamily._dependencies,
          allTransitiveDependencies:
              TransactionsByDateRangeFamily._allTransitiveDependencies,
          startDate: startDate,
          endDate: endDate,
        );

  TransactionsByDateRangeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.startDate,
    required this.endDate,
  }) : super.internal();

  final DateTime startDate;
  final DateTime endDate;

  @override
  Override overrideWith(
    FutureOr<List<Transaction>> Function(TransactionsByDateRangeRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TransactionsByDateRangeProvider._internal(
        (ref) => create(ref as TransactionsByDateRangeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        startDate: startDate,
        endDate: endDate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Transaction>> createElement() {
    return _TransactionsByDateRangeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionsByDateRangeProvider &&
        other.startDate == startDate &&
        other.endDate == endDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);
    hash = _SystemHash.combine(hash, endDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TransactionsByDateRangeRef
    on AutoDisposeFutureProviderRef<List<Transaction>> {
  /// The parameter `startDate` of this provider.
  DateTime get startDate;

  /// The parameter `endDate` of this provider.
  DateTime get endDate;
}

class _TransactionsByDateRangeProviderElement
    extends AutoDisposeFutureProviderElement<List<Transaction>>
    with TransactionsByDateRangeRef {
  _TransactionsByDateRangeProviderElement(super.provider);

  @override
  DateTime get startDate =>
      (origin as TransactionsByDateRangeProvider).startDate;
  @override
  DateTime get endDate => (origin as TransactionsByDateRangeProvider).endDate;
}

String _$transactionNotifierHash() =>
    r'06aaa0accc5626233a36ba11230ee20fbd47a429';

/// See also [TransactionNotifier].
@ProviderFor(TransactionNotifier)
final transactionNotifierProvider = AutoDisposeAsyncNotifierProvider<
    TransactionNotifier, List<Transaction>>.internal(
  TransactionNotifier.new,
  name: r'transactionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TransactionNotifier = AutoDisposeAsyncNotifier<List<Transaction>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
