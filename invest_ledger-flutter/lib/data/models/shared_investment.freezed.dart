// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_investment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SharedInvestment _$SharedInvestmentFromJson(Map<String, dynamic> json) {
  return _SharedInvestment.fromJson(json);
}

/// @nodoc
mixin _$SharedInvestment {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get stockCode => throw _privateConstructorUsedError; // 股票代码
  String get stockName => throw _privateConstructorUsedError; // 股票名称
  Decimal get totalAmount => throw _privateConstructorUsedError; // 总投资金额 (CNY)
  Decimal get totalShares => throw _privateConstructorUsedError; // 总股数
  Decimal get initialPrice => throw _privateConstructorUsedError; // 初始价格 (CNY)
  Decimal? get currentPrice => throw _privateConstructorUsedError; // 当前价格 (CNY)
  Decimal? get sellAmount => throw _privateConstructorUsedError; // 卖出总金额 (CNY)
  DateTime get createdDate => throw _privateConstructorUsedError;
  SharedInvestmentStatus get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<SharedInvestmentParticipant> get participants =>
      throw _privateConstructorUsedError;

  /// Serializes this SharedInvestment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedInvestment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedInvestmentCopyWith<SharedInvestment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedInvestmentCopyWith<$Res> {
  factory $SharedInvestmentCopyWith(
          SharedInvestment value, $Res Function(SharedInvestment) then) =
      _$SharedInvestmentCopyWithImpl<$Res, SharedInvestment>;
  @useResult
  $Res call(
      {String id,
      String name,
      String stockCode,
      String stockName,
      Decimal totalAmount,
      Decimal totalShares,
      Decimal initialPrice,
      Decimal? currentPrice,
      Decimal? sellAmount,
      DateTime createdDate,
      SharedInvestmentStatus status,
      String? notes,
      List<SharedInvestmentParticipant> participants});
}

/// @nodoc
class _$SharedInvestmentCopyWithImpl<$Res, $Val extends SharedInvestment>
    implements $SharedInvestmentCopyWith<$Res> {
  _$SharedInvestmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedInvestment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? stockCode = null,
    Object? stockName = null,
    Object? totalAmount = null,
    Object? totalShares = null,
    Object? initialPrice = null,
    Object? currentPrice = freezed,
    Object? sellAmount = freezed,
    Object? createdDate = null,
    Object? status = null,
    Object? notes = freezed,
    Object? participants = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String,
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalShares: null == totalShares
          ? _value.totalShares
          : totalShares // ignore: cast_nullable_to_non_nullable
              as Decimal,
      initialPrice: null == initialPrice
          ? _value.initialPrice
          : initialPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      sellAmount: freezed == sellAmount
          ? _value.sellAmount
          : sellAmount // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SharedInvestmentStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<SharedInvestmentParticipant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedInvestmentImplCopyWith<$Res>
    implements $SharedInvestmentCopyWith<$Res> {
  factory _$$SharedInvestmentImplCopyWith(_$SharedInvestmentImpl value,
          $Res Function(_$SharedInvestmentImpl) then) =
      __$$SharedInvestmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String stockCode,
      String stockName,
      Decimal totalAmount,
      Decimal totalShares,
      Decimal initialPrice,
      Decimal? currentPrice,
      Decimal? sellAmount,
      DateTime createdDate,
      SharedInvestmentStatus status,
      String? notes,
      List<SharedInvestmentParticipant> participants});
}

/// @nodoc
class __$$SharedInvestmentImplCopyWithImpl<$Res>
    extends _$SharedInvestmentCopyWithImpl<$Res, _$SharedInvestmentImpl>
    implements _$$SharedInvestmentImplCopyWith<$Res> {
  __$$SharedInvestmentImplCopyWithImpl(_$SharedInvestmentImpl _value,
      $Res Function(_$SharedInvestmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SharedInvestment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? stockCode = null,
    Object? stockName = null,
    Object? totalAmount = null,
    Object? totalShares = null,
    Object? initialPrice = null,
    Object? currentPrice = freezed,
    Object? sellAmount = freezed,
    Object? createdDate = null,
    Object? status = null,
    Object? notes = freezed,
    Object? participants = null,
  }) {
    return _then(_$SharedInvestmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String,
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalShares: null == totalShares
          ? _value.totalShares
          : totalShares // ignore: cast_nullable_to_non_nullable
              as Decimal,
      initialPrice: null == initialPrice
          ? _value.initialPrice
          : initialPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      sellAmount: freezed == sellAmount
          ? _value.sellAmount
          : sellAmount // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SharedInvestmentStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<SharedInvestmentParticipant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedInvestmentImpl implements _SharedInvestment {
  const _$SharedInvestmentImpl(
      {required this.id,
      required this.name,
      required this.stockCode,
      required this.stockName,
      required this.totalAmount,
      required this.totalShares,
      required this.initialPrice,
      this.currentPrice,
      this.sellAmount,
      required this.createdDate,
      this.status = SharedInvestmentStatus.active,
      this.notes,
      final List<SharedInvestmentParticipant> participants = const []})
      : _participants = participants;

  factory _$SharedInvestmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedInvestmentImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String stockCode;
// 股票代码
  @override
  final String stockName;
// 股票名称
  @override
  final Decimal totalAmount;
// 总投资金额 (CNY)
  @override
  final Decimal totalShares;
// 总股数
  @override
  final Decimal initialPrice;
// 初始价格 (CNY)
  @override
  final Decimal? currentPrice;
// 当前价格 (CNY)
  @override
  final Decimal? sellAmount;
// 卖出总金额 (CNY)
  @override
  final DateTime createdDate;
  @override
  @JsonKey()
  final SharedInvestmentStatus status;
  @override
  final String? notes;
  final List<SharedInvestmentParticipant> _participants;
  @override
  @JsonKey()
  List<SharedInvestmentParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'SharedInvestment(id: $id, name: $name, stockCode: $stockCode, stockName: $stockName, totalAmount: $totalAmount, totalShares: $totalShares, initialPrice: $initialPrice, currentPrice: $currentPrice, sellAmount: $sellAmount, createdDate: $createdDate, status: $status, notes: $notes, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedInvestmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stockCode, stockCode) ||
                other.stockCode == stockCode) &&
            (identical(other.stockName, stockName) ||
                other.stockName == stockName) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalShares, totalShares) ||
                other.totalShares == totalShares) &&
            (identical(other.initialPrice, initialPrice) ||
                other.initialPrice == initialPrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.sellAmount, sellAmount) ||
                other.sellAmount == sellAmount) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      stockCode,
      stockName,
      totalAmount,
      totalShares,
      initialPrice,
      currentPrice,
      sellAmount,
      createdDate,
      status,
      notes,
      const DeepCollectionEquality().hash(_participants));

  /// Create a copy of SharedInvestment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedInvestmentImplCopyWith<_$SharedInvestmentImpl> get copyWith =>
      __$$SharedInvestmentImplCopyWithImpl<_$SharedInvestmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedInvestmentImplToJson(
      this,
    );
  }
}

abstract class _SharedInvestment implements SharedInvestment {
  const factory _SharedInvestment(
          {required final String id,
          required final String name,
          required final String stockCode,
          required final String stockName,
          required final Decimal totalAmount,
          required final Decimal totalShares,
          required final Decimal initialPrice,
          final Decimal? currentPrice,
          final Decimal? sellAmount,
          required final DateTime createdDate,
          final SharedInvestmentStatus status,
          final String? notes,
          final List<SharedInvestmentParticipant> participants}) =
      _$SharedInvestmentImpl;

  factory _SharedInvestment.fromJson(Map<String, dynamic> json) =
      _$SharedInvestmentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get stockCode; // 股票代码
  @override
  String get stockName; // 股票名称
  @override
  Decimal get totalAmount; // 总投资金额 (CNY)
  @override
  Decimal get totalShares; // 总股数
  @override
  Decimal get initialPrice; // 初始价格 (CNY)
  @override
  Decimal? get currentPrice; // 当前价格 (CNY)
  @override
  Decimal? get sellAmount; // 卖出总金额 (CNY)
  @override
  DateTime get createdDate;
  @override
  SharedInvestmentStatus get status;
  @override
  String? get notes;
  @override
  List<SharedInvestmentParticipant> get participants;

  /// Create a copy of SharedInvestment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedInvestmentImplCopyWith<_$SharedInvestmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SharedInvestmentParticipant _$SharedInvestmentParticipantFromJson(
    Map<String, dynamic> json) {
  return _SharedInvestmentParticipant.fromJson(json);
}

/// @nodoc
mixin _$SharedInvestmentParticipant {
  String get id => throw _privateConstructorUsedError;
  String get sharedInvestmentId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  Decimal get investmentAmount => throw _privateConstructorUsedError;
  Decimal get shares => throw _privateConstructorUsedError;
  Decimal get profitLoss => throw _privateConstructorUsedError;
  String? get transactionId => throw _privateConstructorUsedError;

  /// Serializes this SharedInvestmentParticipant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedInvestmentParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedInvestmentParticipantCopyWith<SharedInvestmentParticipant>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedInvestmentParticipantCopyWith<$Res> {
  factory $SharedInvestmentParticipantCopyWith(
          SharedInvestmentParticipant value,
          $Res Function(SharedInvestmentParticipant) then) =
      _$SharedInvestmentParticipantCopyWithImpl<$Res,
          SharedInvestmentParticipant>;
  @useResult
  $Res call(
      {String id,
      String sharedInvestmentId,
      String userId,
      String userName,
      Decimal investmentAmount,
      Decimal shares,
      Decimal profitLoss,
      String? transactionId});
}

/// @nodoc
class _$SharedInvestmentParticipantCopyWithImpl<$Res,
        $Val extends SharedInvestmentParticipant>
    implements $SharedInvestmentParticipantCopyWith<$Res> {
  _$SharedInvestmentParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedInvestmentParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sharedInvestmentId = null,
    Object? userId = null,
    Object? userName = null,
    Object? investmentAmount = null,
    Object? shares = null,
    Object? profitLoss = null,
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sharedInvestmentId: null == sharedInvestmentId
          ? _value.sharedInvestmentId
          : sharedInvestmentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      investmentAmount: null == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as Decimal,
      profitLoss: null == profitLoss
          ? _value.profitLoss
          : profitLoss // ignore: cast_nullable_to_non_nullable
              as Decimal,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedInvestmentParticipantImplCopyWith<$Res>
    implements $SharedInvestmentParticipantCopyWith<$Res> {
  factory _$$SharedInvestmentParticipantImplCopyWith(
          _$SharedInvestmentParticipantImpl value,
          $Res Function(_$SharedInvestmentParticipantImpl) then) =
      __$$SharedInvestmentParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sharedInvestmentId,
      String userId,
      String userName,
      Decimal investmentAmount,
      Decimal shares,
      Decimal profitLoss,
      String? transactionId});
}

/// @nodoc
class __$$SharedInvestmentParticipantImplCopyWithImpl<$Res>
    extends _$SharedInvestmentParticipantCopyWithImpl<$Res,
        _$SharedInvestmentParticipantImpl>
    implements _$$SharedInvestmentParticipantImplCopyWith<$Res> {
  __$$SharedInvestmentParticipantImplCopyWithImpl(
      _$SharedInvestmentParticipantImpl _value,
      $Res Function(_$SharedInvestmentParticipantImpl) _then)
      : super(_value, _then);

  /// Create a copy of SharedInvestmentParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sharedInvestmentId = null,
    Object? userId = null,
    Object? userName = null,
    Object? investmentAmount = null,
    Object? shares = null,
    Object? profitLoss = null,
    Object? transactionId = freezed,
  }) {
    return _then(_$SharedInvestmentParticipantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sharedInvestmentId: null == sharedInvestmentId
          ? _value.sharedInvestmentId
          : sharedInvestmentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      investmentAmount: null == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as Decimal,
      profitLoss: null == profitLoss
          ? _value.profitLoss
          : profitLoss // ignore: cast_nullable_to_non_nullable
              as Decimal,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedInvestmentParticipantImpl
    implements _SharedInvestmentParticipant {
  const _$SharedInvestmentParticipantImpl(
      {required this.id,
      required this.sharedInvestmentId,
      required this.userId,
      required this.userName,
      required this.investmentAmount,
      required this.shares,
      required this.profitLoss,
      this.transactionId});

  factory _$SharedInvestmentParticipantImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SharedInvestmentParticipantImplFromJson(json);

  @override
  final String id;
  @override
  final String sharedInvestmentId;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final Decimal investmentAmount;
  @override
  final Decimal shares;
  @override
  final Decimal profitLoss;
  @override
  final String? transactionId;

  @override
  String toString() {
    return 'SharedInvestmentParticipant(id: $id, sharedInvestmentId: $sharedInvestmentId, userId: $userId, userName: $userName, investmentAmount: $investmentAmount, shares: $shares, profitLoss: $profitLoss, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedInvestmentParticipantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sharedInvestmentId, sharedInvestmentId) ||
                other.sharedInvestmentId == sharedInvestmentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.investmentAmount, investmentAmount) ||
                other.investmentAmount == investmentAmount) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.profitLoss, profitLoss) ||
                other.profitLoss == profitLoss) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sharedInvestmentId, userId,
      userName, investmentAmount, shares, profitLoss, transactionId);

  /// Create a copy of SharedInvestmentParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedInvestmentParticipantImplCopyWith<_$SharedInvestmentParticipantImpl>
      get copyWith => __$$SharedInvestmentParticipantImplCopyWithImpl<
          _$SharedInvestmentParticipantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedInvestmentParticipantImplToJson(
      this,
    );
  }
}

abstract class _SharedInvestmentParticipant
    implements SharedInvestmentParticipant {
  const factory _SharedInvestmentParticipant(
      {required final String id,
      required final String sharedInvestmentId,
      required final String userId,
      required final String userName,
      required final Decimal investmentAmount,
      required final Decimal shares,
      required final Decimal profitLoss,
      final String? transactionId}) = _$SharedInvestmentParticipantImpl;

  factory _SharedInvestmentParticipant.fromJson(Map<String, dynamic> json) =
      _$SharedInvestmentParticipantImpl.fromJson;

  @override
  String get id;
  @override
  String get sharedInvestmentId;
  @override
  String get userId;
  @override
  String get userName;
  @override
  Decimal get investmentAmount;
  @override
  Decimal get shares;
  @override
  Decimal get profitLoss;
  @override
  String? get transactionId;

  /// Create a copy of SharedInvestmentParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedInvestmentParticipantImplCopyWith<_$SharedInvestmentParticipantImpl>
      get copyWith => throw _privateConstructorUsedError;
}
