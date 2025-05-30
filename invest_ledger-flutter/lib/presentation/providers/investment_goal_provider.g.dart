// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_goal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$investmentGoalDaoHash() => r'f6577c6430797e2bd68d6adce7ca16b6f57a00f9';

/// See also [investmentGoalDao].
@ProviderFor(investmentGoalDao)
final investmentGoalDaoProvider =
    AutoDisposeProvider<InvestmentGoalDao>.internal(
  investmentGoalDao,
  name: r'investmentGoalDaoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$investmentGoalDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InvestmentGoalDaoRef = AutoDisposeProviderRef<InvestmentGoalDao>;
String _$investmentGoalRepositoryHash() =>
    r'a019ad87ddbe308a31a83277e3da757dc90fd90a';

/// See also [investmentGoalRepository].
@ProviderFor(investmentGoalRepository)
final investmentGoalRepositoryProvider =
    AutoDisposeProvider<InvestmentGoalRepository>.internal(
  investmentGoalRepository,
  name: r'investmentGoalRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$investmentGoalRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InvestmentGoalRepositoryRef
    = AutoDisposeProviderRef<InvestmentGoalRepository>;
String _$currentMonthlyGoalHash() =>
    r'814a6efb18de48b8c0b802534fd8c5f05c549172';

/// See also [currentMonthlyGoal].
@ProviderFor(currentMonthlyGoal)
final currentMonthlyGoalProvider =
    AutoDisposeFutureProvider<InvestmentGoal?>.internal(
  currentMonthlyGoal,
  name: r'currentMonthlyGoalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentMonthlyGoalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentMonthlyGoalRef = AutoDisposeFutureProviderRef<InvestmentGoal?>;
String _$currentYearlyGoalHash() => r'6581b19b0655aa8a169906c647a08b7d9f60b660';

/// See also [currentYearlyGoal].
@ProviderFor(currentYearlyGoal)
final currentYearlyGoalProvider =
    AutoDisposeFutureProvider<InvestmentGoal?>.internal(
  currentYearlyGoal,
  name: r'currentYearlyGoalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentYearlyGoalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentYearlyGoalRef = AutoDisposeFutureProviderRef<InvestmentGoal?>;
String _$monthlyGoalProgressHash() =>
    r'bc2d9f528a722533e856817a8fbc5c579bf272f7';

/// See also [monthlyGoalProgress].
@ProviderFor(monthlyGoalProgress)
final monthlyGoalProgressProvider =
    AutoDisposeFutureProvider<Map<String, dynamic>>.internal(
  monthlyGoalProgress,
  name: r'monthlyGoalProgressProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$monthlyGoalProgressHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MonthlyGoalProgressRef
    = AutoDisposeFutureProviderRef<Map<String, dynamic>>;
String _$yearlyGoalProgressHash() =>
    r'18c15326f64602276d226aba875faf0fd30191d2';

/// See also [yearlyGoalProgress].
@ProviderFor(yearlyGoalProgress)
final yearlyGoalProgressProvider =
    AutoDisposeFutureProvider<Map<String, dynamic>>.internal(
  yearlyGoalProgress,
  name: r'yearlyGoalProgressProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$yearlyGoalProgressHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef YearlyGoalProgressRef
    = AutoDisposeFutureProviderRef<Map<String, dynamic>>;
String _$investmentGoalNotifierHash() =>
    r'e5e37238e1b301db0a39112c3b94e64c6152bdd7';

/// See also [InvestmentGoalNotifier].
@ProviderFor(InvestmentGoalNotifier)
final investmentGoalNotifierProvider = AutoDisposeAsyncNotifierProvider<
    InvestmentGoalNotifier, List<InvestmentGoal>>.internal(
  InvestmentGoalNotifier.new,
  name: r'investmentGoalNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$investmentGoalNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InvestmentGoalNotifier
    = AutoDisposeAsyncNotifier<List<InvestmentGoal>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
