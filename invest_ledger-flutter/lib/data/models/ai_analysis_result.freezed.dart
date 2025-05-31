// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_analysis_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AIAnalysisResult _$AIAnalysisResultFromJson(Map<String, dynamic> json) {
  return _AIAnalysisResult.fromJson(json);
}

/// @nodoc
mixin _$AIAnalysisResult {
  String get stockCode => throw _privateConstructorUsedError;
  String get stockName => throw _privateConstructorUsedError;
  String get action =>
      throw _privateConstructorUsedError; // "buy", "sell", "hold"
  int get quantity => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<AgentSignal> get agentSignals => throw _privateConstructorUsedError;
  String get reasoning => throw _privateConstructorUsedError;
  DateTime get analysisTime => throw _privateConstructorUsedError;
  Decimal? get currentPrice => throw _privateConstructorUsedError;
  Decimal? get suggestedPrice => throw _privateConstructorUsedError;

  /// Serializes this AIAnalysisResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AIAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIAnalysisResultCopyWith<AIAnalysisResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIAnalysisResultCopyWith<$Res> {
  factory $AIAnalysisResultCopyWith(
          AIAnalysisResult value, $Res Function(AIAnalysisResult) then) =
      _$AIAnalysisResultCopyWithImpl<$Res, AIAnalysisResult>;
  @useResult
  $Res call(
      {String stockCode,
      String stockName,
      String action,
      int quantity,
      double confidence,
      List<AgentSignal> agentSignals,
      String reasoning,
      DateTime analysisTime,
      Decimal? currentPrice,
      Decimal? suggestedPrice});
}

/// @nodoc
class _$AIAnalysisResultCopyWithImpl<$Res, $Val extends AIAnalysisResult>
    implements $AIAnalysisResultCopyWith<$Res> {
  _$AIAnalysisResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AIAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockCode = null,
    Object? stockName = null,
    Object? action = null,
    Object? quantity = null,
    Object? confidence = null,
    Object? agentSignals = null,
    Object? reasoning = null,
    Object? analysisTime = null,
    Object? currentPrice = freezed,
    Object? suggestedPrice = freezed,
  }) {
    return _then(_value.copyWith(
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String,
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      agentSignals: null == agentSignals
          ? _value.agentSignals
          : agentSignals // ignore: cast_nullable_to_non_nullable
              as List<AgentSignal>,
      reasoning: null == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String,
      analysisTime: null == analysisTime
          ? _value.analysisTime
          : analysisTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      suggestedPrice: freezed == suggestedPrice
          ? _value.suggestedPrice
          : suggestedPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIAnalysisResultImplCopyWith<$Res>
    implements $AIAnalysisResultCopyWith<$Res> {
  factory _$$AIAnalysisResultImplCopyWith(_$AIAnalysisResultImpl value,
          $Res Function(_$AIAnalysisResultImpl) then) =
      __$$AIAnalysisResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stockCode,
      String stockName,
      String action,
      int quantity,
      double confidence,
      List<AgentSignal> agentSignals,
      String reasoning,
      DateTime analysisTime,
      Decimal? currentPrice,
      Decimal? suggestedPrice});
}

/// @nodoc
class __$$AIAnalysisResultImplCopyWithImpl<$Res>
    extends _$AIAnalysisResultCopyWithImpl<$Res, _$AIAnalysisResultImpl>
    implements _$$AIAnalysisResultImplCopyWith<$Res> {
  __$$AIAnalysisResultImplCopyWithImpl(_$AIAnalysisResultImpl _value,
      $Res Function(_$AIAnalysisResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AIAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockCode = null,
    Object? stockName = null,
    Object? action = null,
    Object? quantity = null,
    Object? confidence = null,
    Object? agentSignals = null,
    Object? reasoning = null,
    Object? analysisTime = null,
    Object? currentPrice = freezed,
    Object? suggestedPrice = freezed,
  }) {
    return _then(_$AIAnalysisResultImpl(
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String,
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      agentSignals: null == agentSignals
          ? _value._agentSignals
          : agentSignals // ignore: cast_nullable_to_non_nullable
              as List<AgentSignal>,
      reasoning: null == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String,
      analysisTime: null == analysisTime
          ? _value.analysisTime
          : analysisTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      suggestedPrice: freezed == suggestedPrice
          ? _value.suggestedPrice
          : suggestedPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AIAnalysisResultImpl implements _AIAnalysisResult {
  const _$AIAnalysisResultImpl(
      {required this.stockCode,
      required this.stockName,
      required this.action,
      required this.quantity,
      required this.confidence,
      required final List<AgentSignal> agentSignals,
      required this.reasoning,
      required this.analysisTime,
      this.currentPrice,
      this.suggestedPrice})
      : _agentSignals = agentSignals;

  factory _$AIAnalysisResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIAnalysisResultImplFromJson(json);

  @override
  final String stockCode;
  @override
  final String stockName;
  @override
  final String action;
// "buy", "sell", "hold"
  @override
  final int quantity;
  @override
  final double confidence;
  final List<AgentSignal> _agentSignals;
  @override
  List<AgentSignal> get agentSignals {
    if (_agentSignals is EqualUnmodifiableListView) return _agentSignals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agentSignals);
  }

  @override
  final String reasoning;
  @override
  final DateTime analysisTime;
  @override
  final Decimal? currentPrice;
  @override
  final Decimal? suggestedPrice;

  @override
  String toString() {
    return 'AIAnalysisResult(stockCode: $stockCode, stockName: $stockName, action: $action, quantity: $quantity, confidence: $confidence, agentSignals: $agentSignals, reasoning: $reasoning, analysisTime: $analysisTime, currentPrice: $currentPrice, suggestedPrice: $suggestedPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIAnalysisResultImpl &&
            (identical(other.stockCode, stockCode) ||
                other.stockCode == stockCode) &&
            (identical(other.stockName, stockName) ||
                other.stockName == stockName) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._agentSignals, _agentSignals) &&
            (identical(other.reasoning, reasoning) ||
                other.reasoning == reasoning) &&
            (identical(other.analysisTime, analysisTime) ||
                other.analysisTime == analysisTime) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.suggestedPrice, suggestedPrice) ||
                other.suggestedPrice == suggestedPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stockCode,
      stockName,
      action,
      quantity,
      confidence,
      const DeepCollectionEquality().hash(_agentSignals),
      reasoning,
      analysisTime,
      currentPrice,
      suggestedPrice);

  /// Create a copy of AIAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIAnalysisResultImplCopyWith<_$AIAnalysisResultImpl> get copyWith =>
      __$$AIAnalysisResultImplCopyWithImpl<_$AIAnalysisResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AIAnalysisResultImplToJson(
      this,
    );
  }
}

abstract class _AIAnalysisResult implements AIAnalysisResult {
  const factory _AIAnalysisResult(
      {required final String stockCode,
      required final String stockName,
      required final String action,
      required final int quantity,
      required final double confidence,
      required final List<AgentSignal> agentSignals,
      required final String reasoning,
      required final DateTime analysisTime,
      final Decimal? currentPrice,
      final Decimal? suggestedPrice}) = _$AIAnalysisResultImpl;

  factory _AIAnalysisResult.fromJson(Map<String, dynamic> json) =
      _$AIAnalysisResultImpl.fromJson;

  @override
  String get stockCode;
  @override
  String get stockName;
  @override
  String get action; // "buy", "sell", "hold"
  @override
  int get quantity;
  @override
  double get confidence;
  @override
  List<AgentSignal> get agentSignals;
  @override
  String get reasoning;
  @override
  DateTime get analysisTime;
  @override
  Decimal? get currentPrice;
  @override
  Decimal? get suggestedPrice;

  /// Create a copy of AIAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIAnalysisResultImplCopyWith<_$AIAnalysisResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgentSignal _$AgentSignalFromJson(Map<String, dynamic> json) {
  return _AgentSignal.fromJson(json);
}

/// @nodoc
mixin _$AgentSignal {
  String get agent => throw _privateConstructorUsedError;
  String get signal =>
      throw _privateConstructorUsedError; // "bullish", "bearish", "neutral"
  double get confidence => throw _privateConstructorUsedError;
  String? get reasoning => throw _privateConstructorUsedError;

  /// Serializes this AgentSignal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgentSignal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgentSignalCopyWith<AgentSignal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentSignalCopyWith<$Res> {
  factory $AgentSignalCopyWith(
          AgentSignal value, $Res Function(AgentSignal) then) =
      _$AgentSignalCopyWithImpl<$Res, AgentSignal>;
  @useResult
  $Res call(
      {String agent, String signal, double confidence, String? reasoning});
}

/// @nodoc
class _$AgentSignalCopyWithImpl<$Res, $Val extends AgentSignal>
    implements $AgentSignalCopyWith<$Res> {
  _$AgentSignalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgentSignal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agent = null,
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
  }) {
    return _then(_value.copyWith(
      agent: null == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String,
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentSignalImplCopyWith<$Res>
    implements $AgentSignalCopyWith<$Res> {
  factory _$$AgentSignalImplCopyWith(
          _$AgentSignalImpl value, $Res Function(_$AgentSignalImpl) then) =
      __$$AgentSignalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String agent, String signal, double confidence, String? reasoning});
}

/// @nodoc
class __$$AgentSignalImplCopyWithImpl<$Res>
    extends _$AgentSignalCopyWithImpl<$Res, _$AgentSignalImpl>
    implements _$$AgentSignalImplCopyWith<$Res> {
  __$$AgentSignalImplCopyWithImpl(
      _$AgentSignalImpl _value, $Res Function(_$AgentSignalImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentSignal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agent = null,
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
  }) {
    return _then(_$AgentSignalImpl(
      agent: null == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String,
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentSignalImpl implements _AgentSignal {
  const _$AgentSignalImpl(
      {required this.agent,
      required this.signal,
      required this.confidence,
      this.reasoning});

  factory _$AgentSignalImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentSignalImplFromJson(json);

  @override
  final String agent;
  @override
  final String signal;
// "bullish", "bearish", "neutral"
  @override
  final double confidence;
  @override
  final String? reasoning;

  @override
  String toString() {
    return 'AgentSignal(agent: $agent, signal: $signal, confidence: $confidence, reasoning: $reasoning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentSignalImpl &&
            (identical(other.agent, agent) || other.agent == agent) &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.reasoning, reasoning) ||
                other.reasoning == reasoning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, agent, signal, confidence, reasoning);

  /// Create a copy of AgentSignal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentSignalImplCopyWith<_$AgentSignalImpl> get copyWith =>
      __$$AgentSignalImplCopyWithImpl<_$AgentSignalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentSignalImplToJson(
      this,
    );
  }
}

abstract class _AgentSignal implements AgentSignal {
  const factory _AgentSignal(
      {required final String agent,
      required final String signal,
      required final double confidence,
      final String? reasoning}) = _$AgentSignalImpl;

  factory _AgentSignal.fromJson(Map<String, dynamic> json) =
      _$AgentSignalImpl.fromJson;

  @override
  String get agent;
  @override
  String get signal; // "bullish", "bearish", "neutral"
  @override
  double get confidence;
  @override
  String? get reasoning;

  /// Create a copy of AgentSignal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgentSignalImplCopyWith<_$AgentSignalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AISuggestion _$AISuggestionFromJson(Map<String, dynamic> json) {
  return _AISuggestion.fromJson(json);
}

/// @nodoc
mixin _$AISuggestion {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  AIAnalysisResult get analysis => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get executedAt => throw _privateConstructorUsedError;
  String? get transactionId =>
      throw _privateConstructorUsedError; // 如果用户执行了建议，关联的交易ID
  AISuggestionStatus get status => throw _privateConstructorUsedError;
  String? get userNotes => throw _privateConstructorUsedError;

  /// Serializes this AISuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AISuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AISuggestionCopyWith<AISuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AISuggestionCopyWith<$Res> {
  factory $AISuggestionCopyWith(
          AISuggestion value, $Res Function(AISuggestion) then) =
      _$AISuggestionCopyWithImpl<$Res, AISuggestion>;
  @useResult
  $Res call(
      {String? id,
      String userId,
      AIAnalysisResult analysis,
      DateTime createdAt,
      DateTime? executedAt,
      String? transactionId,
      AISuggestionStatus status,
      String? userNotes});

  $AIAnalysisResultCopyWith<$Res> get analysis;
}

/// @nodoc
class _$AISuggestionCopyWithImpl<$Res, $Val extends AISuggestion>
    implements $AISuggestionCopyWith<$Res> {
  _$AISuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AISuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? analysis = null,
    Object? createdAt = null,
    Object? executedAt = freezed,
    Object? transactionId = freezed,
    Object? status = null,
    Object? userNotes = freezed,
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
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AIAnalysisResult,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      executedAt: freezed == executedAt
          ? _value.executedAt
          : executedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AISuggestionStatus,
      userNotes: freezed == userNotes
          ? _value.userNotes
          : userNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AISuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AIAnalysisResultCopyWith<$Res> get analysis {
    return $AIAnalysisResultCopyWith<$Res>(_value.analysis, (value) {
      return _then(_value.copyWith(analysis: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AISuggestionImplCopyWith<$Res>
    implements $AISuggestionCopyWith<$Res> {
  factory _$$AISuggestionImplCopyWith(
          _$AISuggestionImpl value, $Res Function(_$AISuggestionImpl) then) =
      __$$AISuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      AIAnalysisResult analysis,
      DateTime createdAt,
      DateTime? executedAt,
      String? transactionId,
      AISuggestionStatus status,
      String? userNotes});

  @override
  $AIAnalysisResultCopyWith<$Res> get analysis;
}

/// @nodoc
class __$$AISuggestionImplCopyWithImpl<$Res>
    extends _$AISuggestionCopyWithImpl<$Res, _$AISuggestionImpl>
    implements _$$AISuggestionImplCopyWith<$Res> {
  __$$AISuggestionImplCopyWithImpl(
      _$AISuggestionImpl _value, $Res Function(_$AISuggestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AISuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? analysis = null,
    Object? createdAt = null,
    Object? executedAt = freezed,
    Object? transactionId = freezed,
    Object? status = null,
    Object? userNotes = freezed,
  }) {
    return _then(_$AISuggestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AIAnalysisResult,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      executedAt: freezed == executedAt
          ? _value.executedAt
          : executedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AISuggestionStatus,
      userNotes: freezed == userNotes
          ? _value.userNotes
          : userNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AISuggestionImpl implements _AISuggestion {
  const _$AISuggestionImpl(
      {this.id,
      required this.userId,
      required this.analysis,
      required this.createdAt,
      this.executedAt,
      this.transactionId,
      this.status = AISuggestionStatus.pending,
      this.userNotes});

  factory _$AISuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AISuggestionImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final AIAnalysisResult analysis;
  @override
  final DateTime createdAt;
  @override
  final DateTime? executedAt;
  @override
  final String? transactionId;
// 如果用户执行了建议，关联的交易ID
  @override
  @JsonKey()
  final AISuggestionStatus status;
  @override
  final String? userNotes;

  @override
  String toString() {
    return 'AISuggestion(id: $id, userId: $userId, analysis: $analysis, createdAt: $createdAt, executedAt: $executedAt, transactionId: $transactionId, status: $status, userNotes: $userNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AISuggestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.executedAt, executedAt) ||
                other.executedAt == executedAt) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userNotes, userNotes) ||
                other.userNotes == userNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, analysis, createdAt,
      executedAt, transactionId, status, userNotes);

  /// Create a copy of AISuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AISuggestionImplCopyWith<_$AISuggestionImpl> get copyWith =>
      __$$AISuggestionImplCopyWithImpl<_$AISuggestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AISuggestionImplToJson(
      this,
    );
  }
}

abstract class _AISuggestion implements AISuggestion {
  const factory _AISuggestion(
      {final String? id,
      required final String userId,
      required final AIAnalysisResult analysis,
      required final DateTime createdAt,
      final DateTime? executedAt,
      final String? transactionId,
      final AISuggestionStatus status,
      final String? userNotes}) = _$AISuggestionImpl;

  factory _AISuggestion.fromJson(Map<String, dynamic> json) =
      _$AISuggestionImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  AIAnalysisResult get analysis;
  @override
  DateTime get createdAt;
  @override
  DateTime? get executedAt;
  @override
  String? get transactionId; // 如果用户执行了建议，关联的交易ID
  @override
  AISuggestionStatus get status;
  @override
  String? get userNotes;

  /// Create a copy of AISuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AISuggestionImplCopyWith<_$AISuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
