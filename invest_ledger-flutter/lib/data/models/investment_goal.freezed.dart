// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvestmentGoal _$InvestmentGoalFromJson(Map<String, dynamic> json) {
  return _InvestmentGoal.fromJson(json);
}

/// @nodoc
mixin _$InvestmentGoal {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  GoalType get type => throw _privateConstructorUsedError;
  GoalPeriod get period => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError; // null for yearly goals
  Decimal get targetAmount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this InvestmentGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestmentGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentGoalCopyWith<InvestmentGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentGoalCopyWith<$Res> {
  factory $InvestmentGoalCopyWith(
          InvestmentGoal value, $Res Function(InvestmentGoal) then) =
      _$InvestmentGoalCopyWithImpl<$Res, InvestmentGoal>;
  @useResult
  $Res call(
      {String? id,
      String userId,
      GoalType type,
      GoalPeriod period,
      int year,
      int? month,
      Decimal targetAmount,
      String? description,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$InvestmentGoalCopyWithImpl<$Res, $Val extends InvestmentGoal>
    implements $InvestmentGoalCopyWith<$Res> {
  _$InvestmentGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? type = null,
    Object? period = null,
    Object? year = null,
    Object? month = freezed,
    Object? targetAmount = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GoalType,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as GoalPeriod,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestmentGoalImplCopyWith<$Res>
    implements $InvestmentGoalCopyWith<$Res> {
  factory _$$InvestmentGoalImplCopyWith(_$InvestmentGoalImpl value,
          $Res Function(_$InvestmentGoalImpl) then) =
      __$$InvestmentGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      GoalType type,
      GoalPeriod period,
      int year,
      int? month,
      Decimal targetAmount,
      String? description,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$InvestmentGoalImplCopyWithImpl<$Res>
    extends _$InvestmentGoalCopyWithImpl<$Res, _$InvestmentGoalImpl>
    implements _$$InvestmentGoalImplCopyWith<$Res> {
  __$$InvestmentGoalImplCopyWithImpl(
      _$InvestmentGoalImpl _value, $Res Function(_$InvestmentGoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? type = null,
    Object? period = null,
    Object? year = null,
    Object? month = freezed,
    Object? targetAmount = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InvestmentGoalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GoalType,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as GoalPeriod,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentGoalImpl implements _InvestmentGoal {
  const _$InvestmentGoalImpl(
      {this.id,
      required this.userId,
      required this.type,
      required this.period,
      required this.year,
      this.month,
      required this.targetAmount,
      this.description,
      required this.createdAt,
      this.updatedAt});

  factory _$InvestmentGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentGoalImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final GoalType type;
  @override
  final GoalPeriod period;
  @override
  final int year;
  @override
  final int? month;
// null for yearly goals
  @override
  final Decimal targetAmount;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'InvestmentGoal(id: $id, userId: $userId, type: $type, period: $period, year: $year, month: $month, targetAmount: $targetAmount, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentGoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, type, period, year,
      month, targetAmount, description, createdAt, updatedAt);

  /// Create a copy of InvestmentGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentGoalImplCopyWith<_$InvestmentGoalImpl> get copyWith =>
      __$$InvestmentGoalImplCopyWithImpl<_$InvestmentGoalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentGoalImplToJson(
      this,
    );
  }
}

abstract class _InvestmentGoal implements InvestmentGoal {
  const factory _InvestmentGoal(
      {final String? id,
      required final String userId,
      required final GoalType type,
      required final GoalPeriod period,
      required final int year,
      final int? month,
      required final Decimal targetAmount,
      final String? description,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$InvestmentGoalImpl;

  factory _InvestmentGoal.fromJson(Map<String, dynamic> json) =
      _$InvestmentGoalImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  GoalType get type;
  @override
  GoalPeriod get period;
  @override
  int get year;
  @override
  int? get month; // null for yearly goals
  @override
  Decimal get targetAmount;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of InvestmentGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentGoalImplCopyWith<_$InvestmentGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
