// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get stockCode => throw _privateConstructorUsedError; // 股票代码
  String get stockName => throw _privateConstructorUsedError; // 股票名称
  Decimal get amount => throw _privateConstructorUsedError; // 股数
  Decimal get unitPrice => throw _privateConstructorUsedError; // 单价
  Decimal get profitLoss => throw _privateConstructorUsedError; // 盈亏 (CNY)
  List<String> get tags => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get sharedInvestmentId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {String? id,
      String userId,
      DateTime date,
      String stockCode,
      String stockName,
      Decimal amount,
      Decimal unitPrice,
      Decimal profitLoss,
      List<String> tags,
      String? notes,
      String? sharedInvestmentId,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? date = null,
    Object? stockCode = null,
    Object? stockName = null,
    Object? amount = null,
    Object? unitPrice = null,
    Object? profitLoss = null,
    Object? tags = null,
    Object? notes = freezed,
    Object? sharedInvestmentId = freezed,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String,
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      profitLoss: null == profitLoss
          ? _value.profitLoss
          : profitLoss // ignore: cast_nullable_to_non_nullable
              as Decimal,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedInvestmentId: freezed == sharedInvestmentId
          ? _value.sharedInvestmentId
          : sharedInvestmentId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      DateTime date,
      String stockCode,
      String stockName,
      Decimal amount,
      Decimal unitPrice,
      Decimal profitLoss,
      List<String> tags,
      String? notes,
      String? sharedInvestmentId,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? date = null,
    Object? stockCode = null,
    Object? stockName = null,
    Object? amount = null,
    Object? unitPrice = null,
    Object? profitLoss = null,
    Object? tags = null,
    Object? notes = freezed,
    Object? sharedInvestmentId = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TransactionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String,
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      profitLoss: null == profitLoss
          ? _value.profitLoss
          : profitLoss // ignore: cast_nullable_to_non_nullable
              as Decimal,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedInvestmentId: freezed == sharedInvestmentId
          ? _value.sharedInvestmentId
          : sharedInvestmentId // ignore: cast_nullable_to_non_nullable
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
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {this.id,
      required this.userId,
      required this.date,
      required this.stockCode,
      required this.stockName,
      required this.amount,
      required this.unitPrice,
      required this.profitLoss,
      final List<String> tags = const [],
      this.notes,
      this.sharedInvestmentId,
      required this.createdAt,
      this.updatedAt})
      : _tags = tags;

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final DateTime date;
  @override
  final String stockCode;
// 股票代码
  @override
  final String stockName;
// 股票名称
  @override
  final Decimal amount;
// 股数
  @override
  final Decimal unitPrice;
// 单价
  @override
  final Decimal profitLoss;
// 盈亏 (CNY)
  final List<String> _tags;
// 盈亏 (CNY)
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? notes;
  @override
  final String? sharedInvestmentId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Transaction(id: $id, userId: $userId, date: $date, stockCode: $stockCode, stockName: $stockName, amount: $amount, unitPrice: $unitPrice, profitLoss: $profitLoss, tags: $tags, notes: $notes, sharedInvestmentId: $sharedInvestmentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.stockCode, stockCode) ||
                other.stockCode == stockCode) &&
            (identical(other.stockName, stockName) ||
                other.stockName == stockName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.profitLoss, profitLoss) ||
                other.profitLoss == profitLoss) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.sharedInvestmentId, sharedInvestmentId) ||
                other.sharedInvestmentId == sharedInvestmentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      date,
      stockCode,
      stockName,
      amount,
      unitPrice,
      profitLoss,
      const DeepCollectionEquality().hash(_tags),
      notes,
      sharedInvestmentId,
      createdAt,
      updatedAt);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {final String? id,
      required final String userId,
      required final DateTime date,
      required final String stockCode,
      required final String stockName,
      required final Decimal amount,
      required final Decimal unitPrice,
      required final Decimal profitLoss,
      final List<String> tags,
      final String? notes,
      final String? sharedInvestmentId,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  DateTime get date;
  @override
  String get stockCode; // 股票代码
  @override
  String get stockName; // 股票名称
  @override
  Decimal get amount; // 股数
  @override
  Decimal get unitPrice; // 单价
  @override
  Decimal get profitLoss; // 盈亏 (CNY)
  @override
  List<String> get tags;
  @override
  String? get notes;
  @override
  String? get sharedInvestmentId;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
