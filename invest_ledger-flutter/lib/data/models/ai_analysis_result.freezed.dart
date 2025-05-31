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
  Decimal? get suggestedPrice =>
      throw _privateConstructorUsedError; // Enhanced detailed analysis data
  String? get runId => throw _privateConstructorUsedError;
  Map<String, AgentDetailedAnalysis>? get detailedAnalysis =>
      throw _privateConstructorUsedError;
  WorkflowFlow? get workflowFlow => throw _privateConstructorUsedError;
  List<LLMInteraction>? get llmInteractions =>
      throw _privateConstructorUsedError;

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
      Decimal? suggestedPrice,
      String? runId,
      Map<String, AgentDetailedAnalysis>? detailedAnalysis,
      WorkflowFlow? workflowFlow,
      List<LLMInteraction>? llmInteractions});

  $WorkflowFlowCopyWith<$Res>? get workflowFlow;
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
    Object? runId = freezed,
    Object? detailedAnalysis = freezed,
    Object? workflowFlow = freezed,
    Object? llmInteractions = freezed,
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
      runId: freezed == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String?,
      detailedAnalysis: freezed == detailedAnalysis
          ? _value.detailedAnalysis
          : detailedAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, AgentDetailedAnalysis>?,
      workflowFlow: freezed == workflowFlow
          ? _value.workflowFlow
          : workflowFlow // ignore: cast_nullable_to_non_nullable
              as WorkflowFlow?,
      llmInteractions: freezed == llmInteractions
          ? _value.llmInteractions
          : llmInteractions // ignore: cast_nullable_to_non_nullable
              as List<LLMInteraction>?,
    ) as $Val);
  }

  /// Create a copy of AIAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkflowFlowCopyWith<$Res>? get workflowFlow {
    if (_value.workflowFlow == null) {
      return null;
    }

    return $WorkflowFlowCopyWith<$Res>(_value.workflowFlow!, (value) {
      return _then(_value.copyWith(workflowFlow: value) as $Val);
    });
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
      Decimal? suggestedPrice,
      String? runId,
      Map<String, AgentDetailedAnalysis>? detailedAnalysis,
      WorkflowFlow? workflowFlow,
      List<LLMInteraction>? llmInteractions});

  @override
  $WorkflowFlowCopyWith<$Res>? get workflowFlow;
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
    Object? runId = freezed,
    Object? detailedAnalysis = freezed,
    Object? workflowFlow = freezed,
    Object? llmInteractions = freezed,
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
      runId: freezed == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String?,
      detailedAnalysis: freezed == detailedAnalysis
          ? _value._detailedAnalysis
          : detailedAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, AgentDetailedAnalysis>?,
      workflowFlow: freezed == workflowFlow
          ? _value.workflowFlow
          : workflowFlow // ignore: cast_nullable_to_non_nullable
              as WorkflowFlow?,
      llmInteractions: freezed == llmInteractions
          ? _value._llmInteractions
          : llmInteractions // ignore: cast_nullable_to_non_nullable
              as List<LLMInteraction>?,
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
      this.suggestedPrice,
      this.runId,
      final Map<String, AgentDetailedAnalysis>? detailedAnalysis,
      this.workflowFlow,
      final List<LLMInteraction>? llmInteractions})
      : _agentSignals = agentSignals,
        _detailedAnalysis = detailedAnalysis,
        _llmInteractions = llmInteractions;

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
// Enhanced detailed analysis data
  @override
  final String? runId;
  final Map<String, AgentDetailedAnalysis>? _detailedAnalysis;
  @override
  Map<String, AgentDetailedAnalysis>? get detailedAnalysis {
    final value = _detailedAnalysis;
    if (value == null) return null;
    if (_detailedAnalysis is EqualUnmodifiableMapView) return _detailedAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final WorkflowFlow? workflowFlow;
  final List<LLMInteraction>? _llmInteractions;
  @override
  List<LLMInteraction>? get llmInteractions {
    final value = _llmInteractions;
    if (value == null) return null;
    if (_llmInteractions is EqualUnmodifiableListView) return _llmInteractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AIAnalysisResult(stockCode: $stockCode, stockName: $stockName, action: $action, quantity: $quantity, confidence: $confidence, agentSignals: $agentSignals, reasoning: $reasoning, analysisTime: $analysisTime, currentPrice: $currentPrice, suggestedPrice: $suggestedPrice, runId: $runId, detailedAnalysis: $detailedAnalysis, workflowFlow: $workflowFlow, llmInteractions: $llmInteractions)';
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
                other.suggestedPrice == suggestedPrice) &&
            (identical(other.runId, runId) || other.runId == runId) &&
            const DeepCollectionEquality()
                .equals(other._detailedAnalysis, _detailedAnalysis) &&
            (identical(other.workflowFlow, workflowFlow) ||
                other.workflowFlow == workflowFlow) &&
            const DeepCollectionEquality()
                .equals(other._llmInteractions, _llmInteractions));
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
      suggestedPrice,
      runId,
      const DeepCollectionEquality().hash(_detailedAnalysis),
      workflowFlow,
      const DeepCollectionEquality().hash(_llmInteractions));

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
      final Decimal? suggestedPrice,
      final String? runId,
      final Map<String, AgentDetailedAnalysis>? detailedAnalysis,
      final WorkflowFlow? workflowFlow,
      final List<LLMInteraction>? llmInteractions}) = _$AIAnalysisResultImpl;

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
  Decimal? get suggestedPrice; // Enhanced detailed analysis data
  @override
  String? get runId;
  @override
  Map<String, AgentDetailedAnalysis>? get detailedAnalysis;
  @override
  WorkflowFlow? get workflowFlow;
  @override
  List<LLMInteraction>? get llmInteractions;

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

AgentDetailedAnalysis _$AgentDetailedAnalysisFromJson(
    Map<String, dynamic> json) {
  return _AgentDetailedAnalysis.fromJson(json);
}

/// @nodoc
mixin _$AgentDetailedAnalysis {
  String get agentName => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  double get executionTimeSeconds => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get inputState => throw _privateConstructorUsedError;
  Map<String, dynamic>? get outputState => throw _privateConstructorUsedError;
  Map<String, dynamic>? get reasoning => throw _privateConstructorUsedError;
  List<String>? get llmInteractionIds =>
      throw _privateConstructorUsedError; // Agent-specific analysis data
  TechnicalAnalysisData? get technicalData =>
      throw _privateConstructorUsedError;
  FundamentalAnalysisData? get fundamentalData =>
      throw _privateConstructorUsedError;
  SentimentAnalysisData? get sentimentData =>
      throw _privateConstructorUsedError;
  ValuationAnalysisData? get valuationData =>
      throw _privateConstructorUsedError;
  RiskAnalysisData? get riskData => throw _privateConstructorUsedError;
  MacroAnalysisData? get macroData => throw _privateConstructorUsedError;

  /// Serializes this AgentDetailedAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgentDetailedAnalysisCopyWith<AgentDetailedAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentDetailedAnalysisCopyWith<$Res> {
  factory $AgentDetailedAnalysisCopyWith(AgentDetailedAnalysis value,
          $Res Function(AgentDetailedAnalysis) then) =
      _$AgentDetailedAnalysisCopyWithImpl<$Res, AgentDetailedAnalysis>;
  @useResult
  $Res call(
      {String agentName,
      String displayName,
      DateTime startTime,
      DateTime endTime,
      double executionTimeSeconds,
      String status,
      Map<String, dynamic>? inputState,
      Map<String, dynamic>? outputState,
      Map<String, dynamic>? reasoning,
      List<String>? llmInteractionIds,
      TechnicalAnalysisData? technicalData,
      FundamentalAnalysisData? fundamentalData,
      SentimentAnalysisData? sentimentData,
      ValuationAnalysisData? valuationData,
      RiskAnalysisData? riskData,
      MacroAnalysisData? macroData});

  $TechnicalAnalysisDataCopyWith<$Res>? get technicalData;
  $FundamentalAnalysisDataCopyWith<$Res>? get fundamentalData;
  $SentimentAnalysisDataCopyWith<$Res>? get sentimentData;
  $ValuationAnalysisDataCopyWith<$Res>? get valuationData;
  $RiskAnalysisDataCopyWith<$Res>? get riskData;
  $MacroAnalysisDataCopyWith<$Res>? get macroData;
}

/// @nodoc
class _$AgentDetailedAnalysisCopyWithImpl<$Res,
        $Val extends AgentDetailedAnalysis>
    implements $AgentDetailedAnalysisCopyWith<$Res> {
  _$AgentDetailedAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = null,
    Object? displayName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? executionTimeSeconds = null,
    Object? status = null,
    Object? inputState = freezed,
    Object? outputState = freezed,
    Object? reasoning = freezed,
    Object? llmInteractionIds = freezed,
    Object? technicalData = freezed,
    Object? fundamentalData = freezed,
    Object? sentimentData = freezed,
    Object? valuationData = freezed,
    Object? riskData = freezed,
    Object? macroData = freezed,
  }) {
    return _then(_value.copyWith(
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      executionTimeSeconds: null == executionTimeSeconds
          ? _value.executionTimeSeconds
          : executionTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      inputState: freezed == inputState
          ? _value.inputState
          : inputState // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      outputState: freezed == outputState
          ? _value.outputState
          : outputState // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      llmInteractionIds: freezed == llmInteractionIds
          ? _value.llmInteractionIds
          : llmInteractionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      technicalData: freezed == technicalData
          ? _value.technicalData
          : technicalData // ignore: cast_nullable_to_non_nullable
              as TechnicalAnalysisData?,
      fundamentalData: freezed == fundamentalData
          ? _value.fundamentalData
          : fundamentalData // ignore: cast_nullable_to_non_nullable
              as FundamentalAnalysisData?,
      sentimentData: freezed == sentimentData
          ? _value.sentimentData
          : sentimentData // ignore: cast_nullable_to_non_nullable
              as SentimentAnalysisData?,
      valuationData: freezed == valuationData
          ? _value.valuationData
          : valuationData // ignore: cast_nullable_to_non_nullable
              as ValuationAnalysisData?,
      riskData: freezed == riskData
          ? _value.riskData
          : riskData // ignore: cast_nullable_to_non_nullable
              as RiskAnalysisData?,
      macroData: freezed == macroData
          ? _value.macroData
          : macroData // ignore: cast_nullable_to_non_nullable
              as MacroAnalysisData?,
    ) as $Val);
  }

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TechnicalAnalysisDataCopyWith<$Res>? get technicalData {
    if (_value.technicalData == null) {
      return null;
    }

    return $TechnicalAnalysisDataCopyWith<$Res>(_value.technicalData!, (value) {
      return _then(_value.copyWith(technicalData: value) as $Val);
    });
  }

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FundamentalAnalysisDataCopyWith<$Res>? get fundamentalData {
    if (_value.fundamentalData == null) {
      return null;
    }

    return $FundamentalAnalysisDataCopyWith<$Res>(_value.fundamentalData!,
        (value) {
      return _then(_value.copyWith(fundamentalData: value) as $Val);
    });
  }

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SentimentAnalysisDataCopyWith<$Res>? get sentimentData {
    if (_value.sentimentData == null) {
      return null;
    }

    return $SentimentAnalysisDataCopyWith<$Res>(_value.sentimentData!, (value) {
      return _then(_value.copyWith(sentimentData: value) as $Val);
    });
  }

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValuationAnalysisDataCopyWith<$Res>? get valuationData {
    if (_value.valuationData == null) {
      return null;
    }

    return $ValuationAnalysisDataCopyWith<$Res>(_value.valuationData!, (value) {
      return _then(_value.copyWith(valuationData: value) as $Val);
    });
  }

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RiskAnalysisDataCopyWith<$Res>? get riskData {
    if (_value.riskData == null) {
      return null;
    }

    return $RiskAnalysisDataCopyWith<$Res>(_value.riskData!, (value) {
      return _then(_value.copyWith(riskData: value) as $Val);
    });
  }

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MacroAnalysisDataCopyWith<$Res>? get macroData {
    if (_value.macroData == null) {
      return null;
    }

    return $MacroAnalysisDataCopyWith<$Res>(_value.macroData!, (value) {
      return _then(_value.copyWith(macroData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentDetailedAnalysisImplCopyWith<$Res>
    implements $AgentDetailedAnalysisCopyWith<$Res> {
  factory _$$AgentDetailedAnalysisImplCopyWith(
          _$AgentDetailedAnalysisImpl value,
          $Res Function(_$AgentDetailedAnalysisImpl) then) =
      __$$AgentDetailedAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String agentName,
      String displayName,
      DateTime startTime,
      DateTime endTime,
      double executionTimeSeconds,
      String status,
      Map<String, dynamic>? inputState,
      Map<String, dynamic>? outputState,
      Map<String, dynamic>? reasoning,
      List<String>? llmInteractionIds,
      TechnicalAnalysisData? technicalData,
      FundamentalAnalysisData? fundamentalData,
      SentimentAnalysisData? sentimentData,
      ValuationAnalysisData? valuationData,
      RiskAnalysisData? riskData,
      MacroAnalysisData? macroData});

  @override
  $TechnicalAnalysisDataCopyWith<$Res>? get technicalData;
  @override
  $FundamentalAnalysisDataCopyWith<$Res>? get fundamentalData;
  @override
  $SentimentAnalysisDataCopyWith<$Res>? get sentimentData;
  @override
  $ValuationAnalysisDataCopyWith<$Res>? get valuationData;
  @override
  $RiskAnalysisDataCopyWith<$Res>? get riskData;
  @override
  $MacroAnalysisDataCopyWith<$Res>? get macroData;
}

/// @nodoc
class __$$AgentDetailedAnalysisImplCopyWithImpl<$Res>
    extends _$AgentDetailedAnalysisCopyWithImpl<$Res,
        _$AgentDetailedAnalysisImpl>
    implements _$$AgentDetailedAnalysisImplCopyWith<$Res> {
  __$$AgentDetailedAnalysisImplCopyWithImpl(_$AgentDetailedAnalysisImpl _value,
      $Res Function(_$AgentDetailedAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = null,
    Object? displayName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? executionTimeSeconds = null,
    Object? status = null,
    Object? inputState = freezed,
    Object? outputState = freezed,
    Object? reasoning = freezed,
    Object? llmInteractionIds = freezed,
    Object? technicalData = freezed,
    Object? fundamentalData = freezed,
    Object? sentimentData = freezed,
    Object? valuationData = freezed,
    Object? riskData = freezed,
    Object? macroData = freezed,
  }) {
    return _then(_$AgentDetailedAnalysisImpl(
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      executionTimeSeconds: null == executionTimeSeconds
          ? _value.executionTimeSeconds
          : executionTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      inputState: freezed == inputState
          ? _value._inputState
          : inputState // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      outputState: freezed == outputState
          ? _value._outputState
          : outputState // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reasoning: freezed == reasoning
          ? _value._reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      llmInteractionIds: freezed == llmInteractionIds
          ? _value._llmInteractionIds
          : llmInteractionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      technicalData: freezed == technicalData
          ? _value.technicalData
          : technicalData // ignore: cast_nullable_to_non_nullable
              as TechnicalAnalysisData?,
      fundamentalData: freezed == fundamentalData
          ? _value.fundamentalData
          : fundamentalData // ignore: cast_nullable_to_non_nullable
              as FundamentalAnalysisData?,
      sentimentData: freezed == sentimentData
          ? _value.sentimentData
          : sentimentData // ignore: cast_nullable_to_non_nullable
              as SentimentAnalysisData?,
      valuationData: freezed == valuationData
          ? _value.valuationData
          : valuationData // ignore: cast_nullable_to_non_nullable
              as ValuationAnalysisData?,
      riskData: freezed == riskData
          ? _value.riskData
          : riskData // ignore: cast_nullable_to_non_nullable
              as RiskAnalysisData?,
      macroData: freezed == macroData
          ? _value.macroData
          : macroData // ignore: cast_nullable_to_non_nullable
              as MacroAnalysisData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentDetailedAnalysisImpl implements _AgentDetailedAnalysis {
  const _$AgentDetailedAnalysisImpl(
      {required this.agentName,
      required this.displayName,
      required this.startTime,
      required this.endTime,
      required this.executionTimeSeconds,
      required this.status,
      final Map<String, dynamic>? inputState,
      final Map<String, dynamic>? outputState,
      final Map<String, dynamic>? reasoning,
      final List<String>? llmInteractionIds,
      this.technicalData,
      this.fundamentalData,
      this.sentimentData,
      this.valuationData,
      this.riskData,
      this.macroData})
      : _inputState = inputState,
        _outputState = outputState,
        _reasoning = reasoning,
        _llmInteractionIds = llmInteractionIds;

  factory _$AgentDetailedAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentDetailedAnalysisImplFromJson(json);

  @override
  final String agentName;
  @override
  final String displayName;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final double executionTimeSeconds;
  @override
  final String status;
  final Map<String, dynamic>? _inputState;
  @override
  Map<String, dynamic>? get inputState {
    final value = _inputState;
    if (value == null) return null;
    if (_inputState is EqualUnmodifiableMapView) return _inputState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _outputState;
  @override
  Map<String, dynamic>? get outputState {
    final value = _outputState;
    if (value == null) return null;
    if (_outputState is EqualUnmodifiableMapView) return _outputState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _reasoning;
  @override
  Map<String, dynamic>? get reasoning {
    final value = _reasoning;
    if (value == null) return null;
    if (_reasoning is EqualUnmodifiableMapView) return _reasoning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _llmInteractionIds;
  @override
  List<String>? get llmInteractionIds {
    final value = _llmInteractionIds;
    if (value == null) return null;
    if (_llmInteractionIds is EqualUnmodifiableListView)
      return _llmInteractionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Agent-specific analysis data
  @override
  final TechnicalAnalysisData? technicalData;
  @override
  final FundamentalAnalysisData? fundamentalData;
  @override
  final SentimentAnalysisData? sentimentData;
  @override
  final ValuationAnalysisData? valuationData;
  @override
  final RiskAnalysisData? riskData;
  @override
  final MacroAnalysisData? macroData;

  @override
  String toString() {
    return 'AgentDetailedAnalysis(agentName: $agentName, displayName: $displayName, startTime: $startTime, endTime: $endTime, executionTimeSeconds: $executionTimeSeconds, status: $status, inputState: $inputState, outputState: $outputState, reasoning: $reasoning, llmInteractionIds: $llmInteractionIds, technicalData: $technicalData, fundamentalData: $fundamentalData, sentimentData: $sentimentData, valuationData: $valuationData, riskData: $riskData, macroData: $macroData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentDetailedAnalysisImpl &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.executionTimeSeconds, executionTimeSeconds) ||
                other.executionTimeSeconds == executionTimeSeconds) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._inputState, _inputState) &&
            const DeepCollectionEquality()
                .equals(other._outputState, _outputState) &&
            const DeepCollectionEquality()
                .equals(other._reasoning, _reasoning) &&
            const DeepCollectionEquality()
                .equals(other._llmInteractionIds, _llmInteractionIds) &&
            (identical(other.technicalData, technicalData) ||
                other.technicalData == technicalData) &&
            (identical(other.fundamentalData, fundamentalData) ||
                other.fundamentalData == fundamentalData) &&
            (identical(other.sentimentData, sentimentData) ||
                other.sentimentData == sentimentData) &&
            (identical(other.valuationData, valuationData) ||
                other.valuationData == valuationData) &&
            (identical(other.riskData, riskData) ||
                other.riskData == riskData) &&
            (identical(other.macroData, macroData) ||
                other.macroData == macroData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentName,
      displayName,
      startTime,
      endTime,
      executionTimeSeconds,
      status,
      const DeepCollectionEquality().hash(_inputState),
      const DeepCollectionEquality().hash(_outputState),
      const DeepCollectionEquality().hash(_reasoning),
      const DeepCollectionEquality().hash(_llmInteractionIds),
      technicalData,
      fundamentalData,
      sentimentData,
      valuationData,
      riskData,
      macroData);

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentDetailedAnalysisImplCopyWith<_$AgentDetailedAnalysisImpl>
      get copyWith => __$$AgentDetailedAnalysisImplCopyWithImpl<
          _$AgentDetailedAnalysisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentDetailedAnalysisImplToJson(
      this,
    );
  }
}

abstract class _AgentDetailedAnalysis implements AgentDetailedAnalysis {
  const factory _AgentDetailedAnalysis(
      {required final String agentName,
      required final String displayName,
      required final DateTime startTime,
      required final DateTime endTime,
      required final double executionTimeSeconds,
      required final String status,
      final Map<String, dynamic>? inputState,
      final Map<String, dynamic>? outputState,
      final Map<String, dynamic>? reasoning,
      final List<String>? llmInteractionIds,
      final TechnicalAnalysisData? technicalData,
      final FundamentalAnalysisData? fundamentalData,
      final SentimentAnalysisData? sentimentData,
      final ValuationAnalysisData? valuationData,
      final RiskAnalysisData? riskData,
      final MacroAnalysisData? macroData}) = _$AgentDetailedAnalysisImpl;

  factory _AgentDetailedAnalysis.fromJson(Map<String, dynamic> json) =
      _$AgentDetailedAnalysisImpl.fromJson;

  @override
  String get agentName;
  @override
  String get displayName;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  double get executionTimeSeconds;
  @override
  String get status;
  @override
  Map<String, dynamic>? get inputState;
  @override
  Map<String, dynamic>? get outputState;
  @override
  Map<String, dynamic>? get reasoning;
  @override
  List<String>? get llmInteractionIds; // Agent-specific analysis data
  @override
  TechnicalAnalysisData? get technicalData;
  @override
  FundamentalAnalysisData? get fundamentalData;
  @override
  SentimentAnalysisData? get sentimentData;
  @override
  ValuationAnalysisData? get valuationData;
  @override
  RiskAnalysisData? get riskData;
  @override
  MacroAnalysisData? get macroData;

  /// Create a copy of AgentDetailedAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgentDetailedAnalysisImplCopyWith<_$AgentDetailedAnalysisImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TechnicalAnalysisData _$TechnicalAnalysisDataFromJson(
    Map<String, dynamic> json) {
  return _TechnicalAnalysisData.fromJson(json);
}

/// @nodoc
mixin _$TechnicalAnalysisData {
  String get signal => throw _privateConstructorUsedError;
  String get confidence => throw _privateConstructorUsedError;
  Map<String, StrategySignal>? get strategySignals =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get indicators => throw _privateConstructorUsedError;
  Map<String, dynamic>? get patterns => throw _privateConstructorUsedError;

  /// Serializes this TechnicalAnalysisData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TechnicalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechnicalAnalysisDataCopyWith<TechnicalAnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnicalAnalysisDataCopyWith<$Res> {
  factory $TechnicalAnalysisDataCopyWith(TechnicalAnalysisData value,
          $Res Function(TechnicalAnalysisData) then) =
      _$TechnicalAnalysisDataCopyWithImpl<$Res, TechnicalAnalysisData>;
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, StrategySignal>? strategySignals,
      Map<String, dynamic>? indicators,
      Map<String, dynamic>? patterns});
}

/// @nodoc
class _$TechnicalAnalysisDataCopyWithImpl<$Res,
        $Val extends TechnicalAnalysisData>
    implements $TechnicalAnalysisDataCopyWith<$Res> {
  _$TechnicalAnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechnicalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? strategySignals = freezed,
    Object? indicators = freezed,
    Object? patterns = freezed,
  }) {
    return _then(_value.copyWith(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      strategySignals: freezed == strategySignals
          ? _value.strategySignals
          : strategySignals // ignore: cast_nullable_to_non_nullable
              as Map<String, StrategySignal>?,
      indicators: freezed == indicators
          ? _value.indicators
          : indicators // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      patterns: freezed == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechnicalAnalysisDataImplCopyWith<$Res>
    implements $TechnicalAnalysisDataCopyWith<$Res> {
  factory _$$TechnicalAnalysisDataImplCopyWith(
          _$TechnicalAnalysisDataImpl value,
          $Res Function(_$TechnicalAnalysisDataImpl) then) =
      __$$TechnicalAnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, StrategySignal>? strategySignals,
      Map<String, dynamic>? indicators,
      Map<String, dynamic>? patterns});
}

/// @nodoc
class __$$TechnicalAnalysisDataImplCopyWithImpl<$Res>
    extends _$TechnicalAnalysisDataCopyWithImpl<$Res,
        _$TechnicalAnalysisDataImpl>
    implements _$$TechnicalAnalysisDataImplCopyWith<$Res> {
  __$$TechnicalAnalysisDataImplCopyWithImpl(_$TechnicalAnalysisDataImpl _value,
      $Res Function(_$TechnicalAnalysisDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechnicalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? strategySignals = freezed,
    Object? indicators = freezed,
    Object? patterns = freezed,
  }) {
    return _then(_$TechnicalAnalysisDataImpl(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      strategySignals: freezed == strategySignals
          ? _value._strategySignals
          : strategySignals // ignore: cast_nullable_to_non_nullable
              as Map<String, StrategySignal>?,
      indicators: freezed == indicators
          ? _value._indicators
          : indicators // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      patterns: freezed == patterns
          ? _value._patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TechnicalAnalysisDataImpl implements _TechnicalAnalysisData {
  const _$TechnicalAnalysisDataImpl(
      {required this.signal,
      required this.confidence,
      final Map<String, StrategySignal>? strategySignals,
      final Map<String, dynamic>? indicators,
      final Map<String, dynamic>? patterns})
      : _strategySignals = strategySignals,
        _indicators = indicators,
        _patterns = patterns;

  factory _$TechnicalAnalysisDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechnicalAnalysisDataImplFromJson(json);

  @override
  final String signal;
  @override
  final String confidence;
  final Map<String, StrategySignal>? _strategySignals;
  @override
  Map<String, StrategySignal>? get strategySignals {
    final value = _strategySignals;
    if (value == null) return null;
    if (_strategySignals is EqualUnmodifiableMapView) return _strategySignals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _indicators;
  @override
  Map<String, dynamic>? get indicators {
    final value = _indicators;
    if (value == null) return null;
    if (_indicators is EqualUnmodifiableMapView) return _indicators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _patterns;
  @override
  Map<String, dynamic>? get patterns {
    final value = _patterns;
    if (value == null) return null;
    if (_patterns is EqualUnmodifiableMapView) return _patterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TechnicalAnalysisData(signal: $signal, confidence: $confidence, strategySignals: $strategySignals, indicators: $indicators, patterns: $patterns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnicalAnalysisDataImpl &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._strategySignals, _strategySignals) &&
            const DeepCollectionEquality()
                .equals(other._indicators, _indicators) &&
            const DeepCollectionEquality().equals(other._patterns, _patterns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      signal,
      confidence,
      const DeepCollectionEquality().hash(_strategySignals),
      const DeepCollectionEquality().hash(_indicators),
      const DeepCollectionEquality().hash(_patterns));

  /// Create a copy of TechnicalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnicalAnalysisDataImplCopyWith<_$TechnicalAnalysisDataImpl>
      get copyWith => __$$TechnicalAnalysisDataImplCopyWithImpl<
          _$TechnicalAnalysisDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechnicalAnalysisDataImplToJson(
      this,
    );
  }
}

abstract class _TechnicalAnalysisData implements TechnicalAnalysisData {
  const factory _TechnicalAnalysisData(
      {required final String signal,
      required final String confidence,
      final Map<String, StrategySignal>? strategySignals,
      final Map<String, dynamic>? indicators,
      final Map<String, dynamic>? patterns}) = _$TechnicalAnalysisDataImpl;

  factory _TechnicalAnalysisData.fromJson(Map<String, dynamic> json) =
      _$TechnicalAnalysisDataImpl.fromJson;

  @override
  String get signal;
  @override
  String get confidence;
  @override
  Map<String, StrategySignal>? get strategySignals;
  @override
  Map<String, dynamic>? get indicators;
  @override
  Map<String, dynamic>? get patterns;

  /// Create a copy of TechnicalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechnicalAnalysisDataImplCopyWith<_$TechnicalAnalysisDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StrategySignal _$StrategySignalFromJson(Map<String, dynamic> json) {
  return _StrategySignal.fromJson(json);
}

/// @nodoc
mixin _$StrategySignal {
  String get signal => throw _privateConstructorUsedError;
  String get confidence => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metrics => throw _privateConstructorUsedError;

  /// Serializes this StrategySignal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategySignal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategySignalCopyWith<StrategySignal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategySignalCopyWith<$Res> {
  factory $StrategySignalCopyWith(
          StrategySignal value, $Res Function(StrategySignal) then) =
      _$StrategySignalCopyWithImpl<$Res, StrategySignal>;
  @useResult
  $Res call({String signal, String confidence, Map<String, dynamic>? metrics});
}

/// @nodoc
class _$StrategySignalCopyWithImpl<$Res, $Val extends StrategySignal>
    implements $StrategySignalCopyWith<$Res> {
  _$StrategySignalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategySignal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? metrics = freezed,
  }) {
    return _then(_value.copyWith(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategySignalImplCopyWith<$Res>
    implements $StrategySignalCopyWith<$Res> {
  factory _$$StrategySignalImplCopyWith(_$StrategySignalImpl value,
          $Res Function(_$StrategySignalImpl) then) =
      __$$StrategySignalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String signal, String confidence, Map<String, dynamic>? metrics});
}

/// @nodoc
class __$$StrategySignalImplCopyWithImpl<$Res>
    extends _$StrategySignalCopyWithImpl<$Res, _$StrategySignalImpl>
    implements _$$StrategySignalImplCopyWith<$Res> {
  __$$StrategySignalImplCopyWithImpl(
      _$StrategySignalImpl _value, $Res Function(_$StrategySignalImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategySignal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? metrics = freezed,
  }) {
    return _then(_$StrategySignalImpl(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: freezed == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategySignalImpl implements _StrategySignal {
  const _$StrategySignalImpl(
      {required this.signal,
      required this.confidence,
      final Map<String, dynamic>? metrics})
      : _metrics = metrics;

  factory _$StrategySignalImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategySignalImplFromJson(json);

  @override
  final String signal;
  @override
  final String confidence;
  final Map<String, dynamic>? _metrics;
  @override
  Map<String, dynamic>? get metrics {
    final value = _metrics;
    if (value == null) return null;
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StrategySignal(signal: $signal, confidence: $confidence, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategySignalImpl &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, signal, confidence,
      const DeepCollectionEquality().hash(_metrics));

  /// Create a copy of StrategySignal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategySignalImplCopyWith<_$StrategySignalImpl> get copyWith =>
      __$$StrategySignalImplCopyWithImpl<_$StrategySignalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategySignalImplToJson(
      this,
    );
  }
}

abstract class _StrategySignal implements StrategySignal {
  const factory _StrategySignal(
      {required final String signal,
      required final String confidence,
      final Map<String, dynamic>? metrics}) = _$StrategySignalImpl;

  factory _StrategySignal.fromJson(Map<String, dynamic> json) =
      _$StrategySignalImpl.fromJson;

  @override
  String get signal;
  @override
  String get confidence;
  @override
  Map<String, dynamic>? get metrics;

  /// Create a copy of StrategySignal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategySignalImplCopyWith<_$StrategySignalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FundamentalAnalysisData _$FundamentalAnalysisDataFromJson(
    Map<String, dynamic> json) {
  return _FundamentalAnalysisData.fromJson(json);
}

/// @nodoc
mixin _$FundamentalAnalysisData {
  String get signal => throw _privateConstructorUsedError;
  String get confidence => throw _privateConstructorUsedError;
  Map<String, dynamic>? get reasoning => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metrics => throw _privateConstructorUsedError;
  Map<String, dynamic>? get ratios => throw _privateConstructorUsedError;

  /// Serializes this FundamentalAnalysisData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FundamentalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundamentalAnalysisDataCopyWith<FundamentalAnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundamentalAnalysisDataCopyWith<$Res> {
  factory $FundamentalAnalysisDataCopyWith(FundamentalAnalysisData value,
          $Res Function(FundamentalAnalysisData) then) =
      _$FundamentalAnalysisDataCopyWithImpl<$Res, FundamentalAnalysisData>;
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, dynamic>? reasoning,
      Map<String, dynamic>? metrics,
      Map<String, dynamic>? ratios});
}

/// @nodoc
class _$FundamentalAnalysisDataCopyWithImpl<$Res,
        $Val extends FundamentalAnalysisData>
    implements $FundamentalAnalysisDataCopyWith<$Res> {
  _$FundamentalAnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundamentalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? metrics = freezed,
    Object? ratios = freezed,
  }) {
    return _then(_value.copyWith(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ratios: freezed == ratios
          ? _value.ratios
          : ratios // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundamentalAnalysisDataImplCopyWith<$Res>
    implements $FundamentalAnalysisDataCopyWith<$Res> {
  factory _$$FundamentalAnalysisDataImplCopyWith(
          _$FundamentalAnalysisDataImpl value,
          $Res Function(_$FundamentalAnalysisDataImpl) then) =
      __$$FundamentalAnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, dynamic>? reasoning,
      Map<String, dynamic>? metrics,
      Map<String, dynamic>? ratios});
}

/// @nodoc
class __$$FundamentalAnalysisDataImplCopyWithImpl<$Res>
    extends _$FundamentalAnalysisDataCopyWithImpl<$Res,
        _$FundamentalAnalysisDataImpl>
    implements _$$FundamentalAnalysisDataImplCopyWith<$Res> {
  __$$FundamentalAnalysisDataImplCopyWithImpl(
      _$FundamentalAnalysisDataImpl _value,
      $Res Function(_$FundamentalAnalysisDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundamentalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? metrics = freezed,
    Object? ratios = freezed,
  }) {
    return _then(_$FundamentalAnalysisDataImpl(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value._reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metrics: freezed == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ratios: freezed == ratios
          ? _value._ratios
          : ratios // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundamentalAnalysisDataImpl implements _FundamentalAnalysisData {
  const _$FundamentalAnalysisDataImpl(
      {required this.signal,
      required this.confidence,
      final Map<String, dynamic>? reasoning,
      final Map<String, dynamic>? metrics,
      final Map<String, dynamic>? ratios})
      : _reasoning = reasoning,
        _metrics = metrics,
        _ratios = ratios;

  factory _$FundamentalAnalysisDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundamentalAnalysisDataImplFromJson(json);

  @override
  final String signal;
  @override
  final String confidence;
  final Map<String, dynamic>? _reasoning;
  @override
  Map<String, dynamic>? get reasoning {
    final value = _reasoning;
    if (value == null) return null;
    if (_reasoning is EqualUnmodifiableMapView) return _reasoning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _metrics;
  @override
  Map<String, dynamic>? get metrics {
    final value = _metrics;
    if (value == null) return null;
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _ratios;
  @override
  Map<String, dynamic>? get ratios {
    final value = _ratios;
    if (value == null) return null;
    if (_ratios is EqualUnmodifiableMapView) return _ratios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FundamentalAnalysisData(signal: $signal, confidence: $confidence, reasoning: $reasoning, metrics: $metrics, ratios: $ratios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundamentalAnalysisDataImpl &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._reasoning, _reasoning) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            const DeepCollectionEquality().equals(other._ratios, _ratios));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      signal,
      confidence,
      const DeepCollectionEquality().hash(_reasoning),
      const DeepCollectionEquality().hash(_metrics),
      const DeepCollectionEquality().hash(_ratios));

  /// Create a copy of FundamentalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundamentalAnalysisDataImplCopyWith<_$FundamentalAnalysisDataImpl>
      get copyWith => __$$FundamentalAnalysisDataImplCopyWithImpl<
          _$FundamentalAnalysisDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundamentalAnalysisDataImplToJson(
      this,
    );
  }
}

abstract class _FundamentalAnalysisData implements FundamentalAnalysisData {
  const factory _FundamentalAnalysisData(
      {required final String signal,
      required final String confidence,
      final Map<String, dynamic>? reasoning,
      final Map<String, dynamic>? metrics,
      final Map<String, dynamic>? ratios}) = _$FundamentalAnalysisDataImpl;

  factory _FundamentalAnalysisData.fromJson(Map<String, dynamic> json) =
      _$FundamentalAnalysisDataImpl.fromJson;

  @override
  String get signal;
  @override
  String get confidence;
  @override
  Map<String, dynamic>? get reasoning;
  @override
  Map<String, dynamic>? get metrics;
  @override
  Map<String, dynamic>? get ratios;

  /// Create a copy of FundamentalAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundamentalAnalysisDataImplCopyWith<_$FundamentalAnalysisDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SentimentAnalysisData _$SentimentAnalysisDataFromJson(
    Map<String, dynamic> json) {
  return _SentimentAnalysisData.fromJson(json);
}

/// @nodoc
mixin _$SentimentAnalysisData {
  String get signal => throw _privateConstructorUsedError;
  String get confidence => throw _privateConstructorUsedError;
  String? get reasoning => throw _privateConstructorUsedError;
  double? get sentimentScore => throw _privateConstructorUsedError;
  int? get newsCount => throw _privateConstructorUsedError;
  List<NewsItem>? get newsItems => throw _privateConstructorUsedError;

  /// Serializes this SentimentAnalysisData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentAnalysisDataCopyWith<SentimentAnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentAnalysisDataCopyWith<$Res> {
  factory $SentimentAnalysisDataCopyWith(SentimentAnalysisData value,
          $Res Function(SentimentAnalysisData) then) =
      _$SentimentAnalysisDataCopyWithImpl<$Res, SentimentAnalysisData>;
  @useResult
  $Res call(
      {String signal,
      String confidence,
      String? reasoning,
      double? sentimentScore,
      int? newsCount,
      List<NewsItem>? newsItems});
}

/// @nodoc
class _$SentimentAnalysisDataCopyWithImpl<$Res,
        $Val extends SentimentAnalysisData>
    implements $SentimentAnalysisDataCopyWith<$Res> {
  _$SentimentAnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? sentimentScore = freezed,
    Object? newsCount = freezed,
    Object? newsItems = freezed,
  }) {
    return _then(_value.copyWith(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentScore: freezed == sentimentScore
          ? _value.sentimentScore
          : sentimentScore // ignore: cast_nullable_to_non_nullable
              as double?,
      newsCount: freezed == newsCount
          ? _value.newsCount
          : newsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      newsItems: freezed == newsItems
          ? _value.newsItems
          : newsItems // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentAnalysisDataImplCopyWith<$Res>
    implements $SentimentAnalysisDataCopyWith<$Res> {
  factory _$$SentimentAnalysisDataImplCopyWith(
          _$SentimentAnalysisDataImpl value,
          $Res Function(_$SentimentAnalysisDataImpl) then) =
      __$$SentimentAnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signal,
      String confidence,
      String? reasoning,
      double? sentimentScore,
      int? newsCount,
      List<NewsItem>? newsItems});
}

/// @nodoc
class __$$SentimentAnalysisDataImplCopyWithImpl<$Res>
    extends _$SentimentAnalysisDataCopyWithImpl<$Res,
        _$SentimentAnalysisDataImpl>
    implements _$$SentimentAnalysisDataImplCopyWith<$Res> {
  __$$SentimentAnalysisDataImplCopyWithImpl(_$SentimentAnalysisDataImpl _value,
      $Res Function(_$SentimentAnalysisDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? sentimentScore = freezed,
    Object? newsCount = freezed,
    Object? newsItems = freezed,
  }) {
    return _then(_$SentimentAnalysisDataImpl(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentScore: freezed == sentimentScore
          ? _value.sentimentScore
          : sentimentScore // ignore: cast_nullable_to_non_nullable
              as double?,
      newsCount: freezed == newsCount
          ? _value.newsCount
          : newsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      newsItems: freezed == newsItems
          ? _value._newsItems
          : newsItems // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentAnalysisDataImpl implements _SentimentAnalysisData {
  const _$SentimentAnalysisDataImpl(
      {required this.signal,
      required this.confidence,
      this.reasoning,
      this.sentimentScore,
      this.newsCount,
      final List<NewsItem>? newsItems})
      : _newsItems = newsItems;

  factory _$SentimentAnalysisDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentAnalysisDataImplFromJson(json);

  @override
  final String signal;
  @override
  final String confidence;
  @override
  final String? reasoning;
  @override
  final double? sentimentScore;
  @override
  final int? newsCount;
  final List<NewsItem>? _newsItems;
  @override
  List<NewsItem>? get newsItems {
    final value = _newsItems;
    if (value == null) return null;
    if (_newsItems is EqualUnmodifiableListView) return _newsItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SentimentAnalysisData(signal: $signal, confidence: $confidence, reasoning: $reasoning, sentimentScore: $sentimentScore, newsCount: $newsCount, newsItems: $newsItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentAnalysisDataImpl &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.reasoning, reasoning) ||
                other.reasoning == reasoning) &&
            (identical(other.sentimentScore, sentimentScore) ||
                other.sentimentScore == sentimentScore) &&
            (identical(other.newsCount, newsCount) ||
                other.newsCount == newsCount) &&
            const DeepCollectionEquality()
                .equals(other._newsItems, _newsItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      signal,
      confidence,
      reasoning,
      sentimentScore,
      newsCount,
      const DeepCollectionEquality().hash(_newsItems));

  /// Create a copy of SentimentAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentAnalysisDataImplCopyWith<_$SentimentAnalysisDataImpl>
      get copyWith => __$$SentimentAnalysisDataImplCopyWithImpl<
          _$SentimentAnalysisDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentAnalysisDataImplToJson(
      this,
    );
  }
}

abstract class _SentimentAnalysisData implements SentimentAnalysisData {
  const factory _SentimentAnalysisData(
      {required final String signal,
      required final String confidence,
      final String? reasoning,
      final double? sentimentScore,
      final int? newsCount,
      final List<NewsItem>? newsItems}) = _$SentimentAnalysisDataImpl;

  factory _SentimentAnalysisData.fromJson(Map<String, dynamic> json) =
      _$SentimentAnalysisDataImpl.fromJson;

  @override
  String get signal;
  @override
  String get confidence;
  @override
  String? get reasoning;
  @override
  double? get sentimentScore;
  @override
  int? get newsCount;
  @override
  List<NewsItem>? get newsItems;

  /// Create a copy of SentimentAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentAnalysisDataImplCopyWith<_$SentimentAnalysisDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return _NewsItem.fromJson(json);
}

/// @nodoc
mixin _$NewsItem {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get publishTime => throw _privateConstructorUsedError;
  double? get sentimentScore => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  /// Serializes this NewsItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsItemCopyWith<NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemCopyWith<$Res> {
  factory $NewsItemCopyWith(NewsItem value, $Res Function(NewsItem) then) =
      _$NewsItemCopyWithImpl<$Res, NewsItem>;
  @useResult
  $Res call(
      {String title,
      String content,
      DateTime publishTime,
      double? sentimentScore,
      String? source});
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res, $Val extends NewsItem>
    implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? publishTime = null,
    Object? sentimentScore = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      publishTime: null == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentimentScore: freezed == sentimentScore
          ? _value.sentimentScore
          : sentimentScore // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsItemImplCopyWith<$Res>
    implements $NewsItemCopyWith<$Res> {
  factory _$$NewsItemImplCopyWith(
          _$NewsItemImpl value, $Res Function(_$NewsItemImpl) then) =
      __$$NewsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      DateTime publishTime,
      double? sentimentScore,
      String? source});
}

/// @nodoc
class __$$NewsItemImplCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$NewsItemImpl>
    implements _$$NewsItemImplCopyWith<$Res> {
  __$$NewsItemImplCopyWithImpl(
      _$NewsItemImpl _value, $Res Function(_$NewsItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? publishTime = null,
    Object? sentimentScore = freezed,
    Object? source = freezed,
  }) {
    return _then(_$NewsItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      publishTime: null == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentimentScore: freezed == sentimentScore
          ? _value.sentimentScore
          : sentimentScore // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsItemImpl implements _NewsItem {
  const _$NewsItemImpl(
      {required this.title,
      required this.content,
      required this.publishTime,
      this.sentimentScore,
      this.source});

  factory _$NewsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsItemImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime publishTime;
  @override
  final double? sentimentScore;
  @override
  final String? source;

  @override
  String toString() {
    return 'NewsItem(title: $title, content: $content, publishTime: $publishTime, sentimentScore: $sentimentScore, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.publishTime, publishTime) ||
                other.publishTime == publishTime) &&
            (identical(other.sentimentScore, sentimentScore) ||
                other.sentimentScore == sentimentScore) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, content, publishTime, sentimentScore, source);

  /// Create a copy of NewsItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsItemImplCopyWith<_$NewsItemImpl> get copyWith =>
      __$$NewsItemImplCopyWithImpl<_$NewsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsItemImplToJson(
      this,
    );
  }
}

abstract class _NewsItem implements NewsItem {
  const factory _NewsItem(
      {required final String title,
      required final String content,
      required final DateTime publishTime,
      final double? sentimentScore,
      final String? source}) = _$NewsItemImpl;

  factory _NewsItem.fromJson(Map<String, dynamic> json) =
      _$NewsItemImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get publishTime;
  @override
  double? get sentimentScore;
  @override
  String? get source;

  /// Create a copy of NewsItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsItemImplCopyWith<_$NewsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValuationAnalysisData _$ValuationAnalysisDataFromJson(
    Map<String, dynamic> json) {
  return _ValuationAnalysisData.fromJson(json);
}

/// @nodoc
mixin _$ValuationAnalysisData {
  String get signal => throw _privateConstructorUsedError;
  String get confidence => throw _privateConstructorUsedError;
  Map<String, dynamic>? get reasoning => throw _privateConstructorUsedError;
  Map<String, dynamic>? get valuationMetrics =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get comparisons => throw _privateConstructorUsedError;

  /// Serializes this ValuationAnalysisData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValuationAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValuationAnalysisDataCopyWith<ValuationAnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValuationAnalysisDataCopyWith<$Res> {
  factory $ValuationAnalysisDataCopyWith(ValuationAnalysisData value,
          $Res Function(ValuationAnalysisData) then) =
      _$ValuationAnalysisDataCopyWithImpl<$Res, ValuationAnalysisData>;
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, dynamic>? reasoning,
      Map<String, dynamic>? valuationMetrics,
      Map<String, dynamic>? comparisons});
}

/// @nodoc
class _$ValuationAnalysisDataCopyWithImpl<$Res,
        $Val extends ValuationAnalysisData>
    implements $ValuationAnalysisDataCopyWith<$Res> {
  _$ValuationAnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValuationAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? valuationMetrics = freezed,
    Object? comparisons = freezed,
  }) {
    return _then(_value.copyWith(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      valuationMetrics: freezed == valuationMetrics
          ? _value.valuationMetrics
          : valuationMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      comparisons: freezed == comparisons
          ? _value.comparisons
          : comparisons // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValuationAnalysisDataImplCopyWith<$Res>
    implements $ValuationAnalysisDataCopyWith<$Res> {
  factory _$$ValuationAnalysisDataImplCopyWith(
          _$ValuationAnalysisDataImpl value,
          $Res Function(_$ValuationAnalysisDataImpl) then) =
      __$$ValuationAnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, dynamic>? reasoning,
      Map<String, dynamic>? valuationMetrics,
      Map<String, dynamic>? comparisons});
}

/// @nodoc
class __$$ValuationAnalysisDataImplCopyWithImpl<$Res>
    extends _$ValuationAnalysisDataCopyWithImpl<$Res,
        _$ValuationAnalysisDataImpl>
    implements _$$ValuationAnalysisDataImplCopyWith<$Res> {
  __$$ValuationAnalysisDataImplCopyWithImpl(_$ValuationAnalysisDataImpl _value,
      $Res Function(_$ValuationAnalysisDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValuationAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? valuationMetrics = freezed,
    Object? comparisons = freezed,
  }) {
    return _then(_$ValuationAnalysisDataImpl(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value._reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      valuationMetrics: freezed == valuationMetrics
          ? _value._valuationMetrics
          : valuationMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      comparisons: freezed == comparisons
          ? _value._comparisons
          : comparisons // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValuationAnalysisDataImpl implements _ValuationAnalysisData {
  const _$ValuationAnalysisDataImpl(
      {required this.signal,
      required this.confidence,
      final Map<String, dynamic>? reasoning,
      final Map<String, dynamic>? valuationMetrics,
      final Map<String, dynamic>? comparisons})
      : _reasoning = reasoning,
        _valuationMetrics = valuationMetrics,
        _comparisons = comparisons;

  factory _$ValuationAnalysisDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValuationAnalysisDataImplFromJson(json);

  @override
  final String signal;
  @override
  final String confidence;
  final Map<String, dynamic>? _reasoning;
  @override
  Map<String, dynamic>? get reasoning {
    final value = _reasoning;
    if (value == null) return null;
    if (_reasoning is EqualUnmodifiableMapView) return _reasoning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _valuationMetrics;
  @override
  Map<String, dynamic>? get valuationMetrics {
    final value = _valuationMetrics;
    if (value == null) return null;
    if (_valuationMetrics is EqualUnmodifiableMapView) return _valuationMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _comparisons;
  @override
  Map<String, dynamic>? get comparisons {
    final value = _comparisons;
    if (value == null) return null;
    if (_comparisons is EqualUnmodifiableMapView) return _comparisons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ValuationAnalysisData(signal: $signal, confidence: $confidence, reasoning: $reasoning, valuationMetrics: $valuationMetrics, comparisons: $comparisons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValuationAnalysisDataImpl &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._reasoning, _reasoning) &&
            const DeepCollectionEquality()
                .equals(other._valuationMetrics, _valuationMetrics) &&
            const DeepCollectionEquality()
                .equals(other._comparisons, _comparisons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      signal,
      confidence,
      const DeepCollectionEquality().hash(_reasoning),
      const DeepCollectionEquality().hash(_valuationMetrics),
      const DeepCollectionEquality().hash(_comparisons));

  /// Create a copy of ValuationAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValuationAnalysisDataImplCopyWith<_$ValuationAnalysisDataImpl>
      get copyWith => __$$ValuationAnalysisDataImplCopyWithImpl<
          _$ValuationAnalysisDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValuationAnalysisDataImplToJson(
      this,
    );
  }
}

abstract class _ValuationAnalysisData implements ValuationAnalysisData {
  const factory _ValuationAnalysisData(
      {required final String signal,
      required final String confidence,
      final Map<String, dynamic>? reasoning,
      final Map<String, dynamic>? valuationMetrics,
      final Map<String, dynamic>? comparisons}) = _$ValuationAnalysisDataImpl;

  factory _ValuationAnalysisData.fromJson(Map<String, dynamic> json) =
      _$ValuationAnalysisDataImpl.fromJson;

  @override
  String get signal;
  @override
  String get confidence;
  @override
  Map<String, dynamic>? get reasoning;
  @override
  Map<String, dynamic>? get valuationMetrics;
  @override
  Map<String, dynamic>? get comparisons;

  /// Create a copy of ValuationAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValuationAnalysisDataImplCopyWith<_$ValuationAnalysisDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RiskAnalysisData _$RiskAnalysisDataFromJson(Map<String, dynamic> json) {
  return _RiskAnalysisData.fromJson(json);
}

/// @nodoc
mixin _$RiskAnalysisData {
  String get signal => throw _privateConstructorUsedError;
  String get confidence => throw _privateConstructorUsedError;
  Map<String, dynamic>? get riskMetrics => throw _privateConstructorUsedError;
  Map<String, dynamic>? get constraints => throw _privateConstructorUsedError;
  double? get maxPositionSize => throw _privateConstructorUsedError;
  double? get riskScore => throw _privateConstructorUsedError;

  /// Serializes this RiskAnalysisData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiskAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiskAnalysisDataCopyWith<RiskAnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskAnalysisDataCopyWith<$Res> {
  factory $RiskAnalysisDataCopyWith(
          RiskAnalysisData value, $Res Function(RiskAnalysisData) then) =
      _$RiskAnalysisDataCopyWithImpl<$Res, RiskAnalysisData>;
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, dynamic>? riskMetrics,
      Map<String, dynamic>? constraints,
      double? maxPositionSize,
      double? riskScore});
}

/// @nodoc
class _$RiskAnalysisDataCopyWithImpl<$Res, $Val extends RiskAnalysisData>
    implements $RiskAnalysisDataCopyWith<$Res> {
  _$RiskAnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiskAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? riskMetrics = freezed,
    Object? constraints = freezed,
    Object? maxPositionSize = freezed,
    Object? riskScore = freezed,
  }) {
    return _then(_value.copyWith(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      riskMetrics: freezed == riskMetrics
          ? _value.riskMetrics
          : riskMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      maxPositionSize: freezed == maxPositionSize
          ? _value.maxPositionSize
          : maxPositionSize // ignore: cast_nullable_to_non_nullable
              as double?,
      riskScore: freezed == riskScore
          ? _value.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiskAnalysisDataImplCopyWith<$Res>
    implements $RiskAnalysisDataCopyWith<$Res> {
  factory _$$RiskAnalysisDataImplCopyWith(_$RiskAnalysisDataImpl value,
          $Res Function(_$RiskAnalysisDataImpl) then) =
      __$$RiskAnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signal,
      String confidence,
      Map<String, dynamic>? riskMetrics,
      Map<String, dynamic>? constraints,
      double? maxPositionSize,
      double? riskScore});
}

/// @nodoc
class __$$RiskAnalysisDataImplCopyWithImpl<$Res>
    extends _$RiskAnalysisDataCopyWithImpl<$Res, _$RiskAnalysisDataImpl>
    implements _$$RiskAnalysisDataImplCopyWith<$Res> {
  __$$RiskAnalysisDataImplCopyWithImpl(_$RiskAnalysisDataImpl _value,
      $Res Function(_$RiskAnalysisDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiskAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? riskMetrics = freezed,
    Object? constraints = freezed,
    Object? maxPositionSize = freezed,
    Object? riskScore = freezed,
  }) {
    return _then(_$RiskAnalysisDataImpl(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      riskMetrics: freezed == riskMetrics
          ? _value._riskMetrics
          : riskMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      constraints: freezed == constraints
          ? _value._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      maxPositionSize: freezed == maxPositionSize
          ? _value.maxPositionSize
          : maxPositionSize // ignore: cast_nullable_to_non_nullable
              as double?,
      riskScore: freezed == riskScore
          ? _value.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiskAnalysisDataImpl implements _RiskAnalysisData {
  const _$RiskAnalysisDataImpl(
      {required this.signal,
      required this.confidence,
      final Map<String, dynamic>? riskMetrics,
      final Map<String, dynamic>? constraints,
      this.maxPositionSize,
      this.riskScore})
      : _riskMetrics = riskMetrics,
        _constraints = constraints;

  factory _$RiskAnalysisDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskAnalysisDataImplFromJson(json);

  @override
  final String signal;
  @override
  final String confidence;
  final Map<String, dynamic>? _riskMetrics;
  @override
  Map<String, dynamic>? get riskMetrics {
    final value = _riskMetrics;
    if (value == null) return null;
    if (_riskMetrics is EqualUnmodifiableMapView) return _riskMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _constraints;
  @override
  Map<String, dynamic>? get constraints {
    final value = _constraints;
    if (value == null) return null;
    if (_constraints is EqualUnmodifiableMapView) return _constraints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? maxPositionSize;
  @override
  final double? riskScore;

  @override
  String toString() {
    return 'RiskAnalysisData(signal: $signal, confidence: $confidence, riskMetrics: $riskMetrics, constraints: $constraints, maxPositionSize: $maxPositionSize, riskScore: $riskScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskAnalysisDataImpl &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._riskMetrics, _riskMetrics) &&
            const DeepCollectionEquality()
                .equals(other._constraints, _constraints) &&
            (identical(other.maxPositionSize, maxPositionSize) ||
                other.maxPositionSize == maxPositionSize) &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      signal,
      confidence,
      const DeepCollectionEquality().hash(_riskMetrics),
      const DeepCollectionEquality().hash(_constraints),
      maxPositionSize,
      riskScore);

  /// Create a copy of RiskAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiskAnalysisDataImplCopyWith<_$RiskAnalysisDataImpl> get copyWith =>
      __$$RiskAnalysisDataImplCopyWithImpl<_$RiskAnalysisDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskAnalysisDataImplToJson(
      this,
    );
  }
}

abstract class _RiskAnalysisData implements RiskAnalysisData {
  const factory _RiskAnalysisData(
      {required final String signal,
      required final String confidence,
      final Map<String, dynamic>? riskMetrics,
      final Map<String, dynamic>? constraints,
      final double? maxPositionSize,
      final double? riskScore}) = _$RiskAnalysisDataImpl;

  factory _RiskAnalysisData.fromJson(Map<String, dynamic> json) =
      _$RiskAnalysisDataImpl.fromJson;

  @override
  String get signal;
  @override
  String get confidence;
  @override
  Map<String, dynamic>? get riskMetrics;
  @override
  Map<String, dynamic>? get constraints;
  @override
  double? get maxPositionSize;
  @override
  double? get riskScore;

  /// Create a copy of RiskAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiskAnalysisDataImplCopyWith<_$RiskAnalysisDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MacroAnalysisData _$MacroAnalysisDataFromJson(Map<String, dynamic> json) {
  return _MacroAnalysisData.fromJson(json);
}

/// @nodoc
mixin _$MacroAnalysisData {
  String get signal => throw _privateConstructorUsedError;
  String get confidence => throw _privateConstructorUsedError;
  String? get reasoning => throw _privateConstructorUsedError;
  Map<String, dynamic>? get macroIndicators =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get marketConditions =>
      throw _privateConstructorUsedError;

  /// Serializes this MacroAnalysisData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MacroAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MacroAnalysisDataCopyWith<MacroAnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacroAnalysisDataCopyWith<$Res> {
  factory $MacroAnalysisDataCopyWith(
          MacroAnalysisData value, $Res Function(MacroAnalysisData) then) =
      _$MacroAnalysisDataCopyWithImpl<$Res, MacroAnalysisData>;
  @useResult
  $Res call(
      {String signal,
      String confidence,
      String? reasoning,
      Map<String, dynamic>? macroIndicators,
      Map<String, dynamic>? marketConditions});
}

/// @nodoc
class _$MacroAnalysisDataCopyWithImpl<$Res, $Val extends MacroAnalysisData>
    implements $MacroAnalysisDataCopyWith<$Res> {
  _$MacroAnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MacroAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? macroIndicators = freezed,
    Object? marketConditions = freezed,
  }) {
    return _then(_value.copyWith(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String?,
      macroIndicators: freezed == macroIndicators
          ? _value.macroIndicators
          : macroIndicators // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      marketConditions: freezed == marketConditions
          ? _value.marketConditions
          : marketConditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MacroAnalysisDataImplCopyWith<$Res>
    implements $MacroAnalysisDataCopyWith<$Res> {
  factory _$$MacroAnalysisDataImplCopyWith(_$MacroAnalysisDataImpl value,
          $Res Function(_$MacroAnalysisDataImpl) then) =
      __$$MacroAnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signal,
      String confidence,
      String? reasoning,
      Map<String, dynamic>? macroIndicators,
      Map<String, dynamic>? marketConditions});
}

/// @nodoc
class __$$MacroAnalysisDataImplCopyWithImpl<$Res>
    extends _$MacroAnalysisDataCopyWithImpl<$Res, _$MacroAnalysisDataImpl>
    implements _$$MacroAnalysisDataImplCopyWith<$Res> {
  __$$MacroAnalysisDataImplCopyWithImpl(_$MacroAnalysisDataImpl _value,
      $Res Function(_$MacroAnalysisDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MacroAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signal = null,
    Object? confidence = null,
    Object? reasoning = freezed,
    Object? macroIndicators = freezed,
    Object? marketConditions = freezed,
  }) {
    return _then(_$MacroAnalysisDataImpl(
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: freezed == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String?,
      macroIndicators: freezed == macroIndicators
          ? _value._macroIndicators
          : macroIndicators // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      marketConditions: freezed == marketConditions
          ? _value._marketConditions
          : marketConditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MacroAnalysisDataImpl implements _MacroAnalysisData {
  const _$MacroAnalysisDataImpl(
      {required this.signal,
      required this.confidence,
      this.reasoning,
      final Map<String, dynamic>? macroIndicators,
      final Map<String, dynamic>? marketConditions})
      : _macroIndicators = macroIndicators,
        _marketConditions = marketConditions;

  factory _$MacroAnalysisDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacroAnalysisDataImplFromJson(json);

  @override
  final String signal;
  @override
  final String confidence;
  @override
  final String? reasoning;
  final Map<String, dynamic>? _macroIndicators;
  @override
  Map<String, dynamic>? get macroIndicators {
    final value = _macroIndicators;
    if (value == null) return null;
    if (_macroIndicators is EqualUnmodifiableMapView) return _macroIndicators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _marketConditions;
  @override
  Map<String, dynamic>? get marketConditions {
    final value = _marketConditions;
    if (value == null) return null;
    if (_marketConditions is EqualUnmodifiableMapView) return _marketConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MacroAnalysisData(signal: $signal, confidence: $confidence, reasoning: $reasoning, macroIndicators: $macroIndicators, marketConditions: $marketConditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacroAnalysisDataImpl &&
            (identical(other.signal, signal) || other.signal == signal) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.reasoning, reasoning) ||
                other.reasoning == reasoning) &&
            const DeepCollectionEquality()
                .equals(other._macroIndicators, _macroIndicators) &&
            const DeepCollectionEquality()
                .equals(other._marketConditions, _marketConditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      signal,
      confidence,
      reasoning,
      const DeepCollectionEquality().hash(_macroIndicators),
      const DeepCollectionEquality().hash(_marketConditions));

  /// Create a copy of MacroAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MacroAnalysisDataImplCopyWith<_$MacroAnalysisDataImpl> get copyWith =>
      __$$MacroAnalysisDataImplCopyWithImpl<_$MacroAnalysisDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MacroAnalysisDataImplToJson(
      this,
    );
  }
}

abstract class _MacroAnalysisData implements MacroAnalysisData {
  const factory _MacroAnalysisData(
      {required final String signal,
      required final String confidence,
      final String? reasoning,
      final Map<String, dynamic>? macroIndicators,
      final Map<String, dynamic>? marketConditions}) = _$MacroAnalysisDataImpl;

  factory _MacroAnalysisData.fromJson(Map<String, dynamic> json) =
      _$MacroAnalysisDataImpl.fromJson;

  @override
  String get signal;
  @override
  String get confidence;
  @override
  String? get reasoning;
  @override
  Map<String, dynamic>? get macroIndicators;
  @override
  Map<String, dynamic>? get marketConditions;

  /// Create a copy of MacroAnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MacroAnalysisDataImplCopyWith<_$MacroAnalysisDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkflowFlow _$WorkflowFlowFromJson(Map<String, dynamic> json) {
  return _WorkflowFlow.fromJson(json);
}

/// @nodoc
mixin _$WorkflowFlow {
  String get runId => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  Map<String, AgentSummary> get agents => throw _privateConstructorUsedError;
  List<StateTransition> get stateTransitions =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get finalDecision => throw _privateConstructorUsedError;

  /// Serializes this WorkflowFlow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkflowFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkflowFlowCopyWith<WorkflowFlow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowFlowCopyWith<$Res> {
  factory $WorkflowFlowCopyWith(
          WorkflowFlow value, $Res Function(WorkflowFlow) then) =
      _$WorkflowFlowCopyWithImpl<$Res, WorkflowFlow>;
  @useResult
  $Res call(
      {String runId,
      DateTime startTime,
      DateTime endTime,
      Map<String, AgentSummary> agents,
      List<StateTransition> stateTransitions,
      Map<String, dynamic>? finalDecision});
}

/// @nodoc
class _$WorkflowFlowCopyWithImpl<$Res, $Val extends WorkflowFlow>
    implements $WorkflowFlowCopyWith<$Res> {
  _$WorkflowFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkflowFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? agents = null,
    Object? stateTransitions = null,
    Object? finalDecision = freezed,
  }) {
    return _then(_value.copyWith(
      runId: null == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agents: null == agents
          ? _value.agents
          : agents // ignore: cast_nullable_to_non_nullable
              as Map<String, AgentSummary>,
      stateTransitions: null == stateTransitions
          ? _value.stateTransitions
          : stateTransitions // ignore: cast_nullable_to_non_nullable
              as List<StateTransition>,
      finalDecision: freezed == finalDecision
          ? _value.finalDecision
          : finalDecision // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkflowFlowImplCopyWith<$Res>
    implements $WorkflowFlowCopyWith<$Res> {
  factory _$$WorkflowFlowImplCopyWith(
          _$WorkflowFlowImpl value, $Res Function(_$WorkflowFlowImpl) then) =
      __$$WorkflowFlowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String runId,
      DateTime startTime,
      DateTime endTime,
      Map<String, AgentSummary> agents,
      List<StateTransition> stateTransitions,
      Map<String, dynamic>? finalDecision});
}

/// @nodoc
class __$$WorkflowFlowImplCopyWithImpl<$Res>
    extends _$WorkflowFlowCopyWithImpl<$Res, _$WorkflowFlowImpl>
    implements _$$WorkflowFlowImplCopyWith<$Res> {
  __$$WorkflowFlowImplCopyWithImpl(
      _$WorkflowFlowImpl _value, $Res Function(_$WorkflowFlowImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkflowFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? agents = null,
    Object? stateTransitions = null,
    Object? finalDecision = freezed,
  }) {
    return _then(_$WorkflowFlowImpl(
      runId: null == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agents: null == agents
          ? _value._agents
          : agents // ignore: cast_nullable_to_non_nullable
              as Map<String, AgentSummary>,
      stateTransitions: null == stateTransitions
          ? _value._stateTransitions
          : stateTransitions // ignore: cast_nullable_to_non_nullable
              as List<StateTransition>,
      finalDecision: freezed == finalDecision
          ? _value._finalDecision
          : finalDecision // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkflowFlowImpl implements _WorkflowFlow {
  const _$WorkflowFlowImpl(
      {required this.runId,
      required this.startTime,
      required this.endTime,
      required final Map<String, AgentSummary> agents,
      required final List<StateTransition> stateTransitions,
      final Map<String, dynamic>? finalDecision})
      : _agents = agents,
        _stateTransitions = stateTransitions,
        _finalDecision = finalDecision;

  factory _$WorkflowFlowImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowFlowImplFromJson(json);

  @override
  final String runId;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  final Map<String, AgentSummary> _agents;
  @override
  Map<String, AgentSummary> get agents {
    if (_agents is EqualUnmodifiableMapView) return _agents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_agents);
  }

  final List<StateTransition> _stateTransitions;
  @override
  List<StateTransition> get stateTransitions {
    if (_stateTransitions is EqualUnmodifiableListView)
      return _stateTransitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateTransitions);
  }

  final Map<String, dynamic>? _finalDecision;
  @override
  Map<String, dynamic>? get finalDecision {
    final value = _finalDecision;
    if (value == null) return null;
    if (_finalDecision is EqualUnmodifiableMapView) return _finalDecision;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WorkflowFlow(runId: $runId, startTime: $startTime, endTime: $endTime, agents: $agents, stateTransitions: $stateTransitions, finalDecision: $finalDecision)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowFlowImpl &&
            (identical(other.runId, runId) || other.runId == runId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other._agents, _agents) &&
            const DeepCollectionEquality()
                .equals(other._stateTransitions, _stateTransitions) &&
            const DeepCollectionEquality()
                .equals(other._finalDecision, _finalDecision));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      runId,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_agents),
      const DeepCollectionEquality().hash(_stateTransitions),
      const DeepCollectionEquality().hash(_finalDecision));

  /// Create a copy of WorkflowFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowFlowImplCopyWith<_$WorkflowFlowImpl> get copyWith =>
      __$$WorkflowFlowImplCopyWithImpl<_$WorkflowFlowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowFlowImplToJson(
      this,
    );
  }
}

abstract class _WorkflowFlow implements WorkflowFlow {
  const factory _WorkflowFlow(
      {required final String runId,
      required final DateTime startTime,
      required final DateTime endTime,
      required final Map<String, AgentSummary> agents,
      required final List<StateTransition> stateTransitions,
      final Map<String, dynamic>? finalDecision}) = _$WorkflowFlowImpl;

  factory _WorkflowFlow.fromJson(Map<String, dynamic> json) =
      _$WorkflowFlowImpl.fromJson;

  @override
  String get runId;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  Map<String, AgentSummary> get agents;
  @override
  List<StateTransition> get stateTransitions;
  @override
  Map<String, dynamic>? get finalDecision;

  /// Create a copy of WorkflowFlow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkflowFlowImplCopyWith<_$WorkflowFlowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgentSummary _$AgentSummaryFromJson(Map<String, dynamic> json) {
  return _AgentSummary.fromJson(json);
}

/// @nodoc
mixin _$AgentSummary {
  String get agentName => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  double get executionTimeSeconds => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this AgentSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgentSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgentSummaryCopyWith<AgentSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentSummaryCopyWith<$Res> {
  factory $AgentSummaryCopyWith(
          AgentSummary value, $Res Function(AgentSummary) then) =
      _$AgentSummaryCopyWithImpl<$Res, AgentSummary>;
  @useResult
  $Res call(
      {String agentName,
      DateTime startTime,
      DateTime endTime,
      double executionTimeSeconds,
      String status});
}

/// @nodoc
class _$AgentSummaryCopyWithImpl<$Res, $Val extends AgentSummary>
    implements $AgentSummaryCopyWith<$Res> {
  _$AgentSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgentSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? executionTimeSeconds = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      executionTimeSeconds: null == executionTimeSeconds
          ? _value.executionTimeSeconds
          : executionTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentSummaryImplCopyWith<$Res>
    implements $AgentSummaryCopyWith<$Res> {
  factory _$$AgentSummaryImplCopyWith(
          _$AgentSummaryImpl value, $Res Function(_$AgentSummaryImpl) then) =
      __$$AgentSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String agentName,
      DateTime startTime,
      DateTime endTime,
      double executionTimeSeconds,
      String status});
}

/// @nodoc
class __$$AgentSummaryImplCopyWithImpl<$Res>
    extends _$AgentSummaryCopyWithImpl<$Res, _$AgentSummaryImpl>
    implements _$$AgentSummaryImplCopyWith<$Res> {
  __$$AgentSummaryImplCopyWithImpl(
      _$AgentSummaryImpl _value, $Res Function(_$AgentSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? executionTimeSeconds = null,
    Object? status = null,
  }) {
    return _then(_$AgentSummaryImpl(
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      executionTimeSeconds: null == executionTimeSeconds
          ? _value.executionTimeSeconds
          : executionTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentSummaryImpl implements _AgentSummary {
  const _$AgentSummaryImpl(
      {required this.agentName,
      required this.startTime,
      required this.endTime,
      required this.executionTimeSeconds,
      required this.status});

  factory _$AgentSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentSummaryImplFromJson(json);

  @override
  final String agentName;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final double executionTimeSeconds;
  @override
  final String status;

  @override
  String toString() {
    return 'AgentSummary(agentName: $agentName, startTime: $startTime, endTime: $endTime, executionTimeSeconds: $executionTimeSeconds, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentSummaryImpl &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.executionTimeSeconds, executionTimeSeconds) ||
                other.executionTimeSeconds == executionTimeSeconds) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, agentName, startTime, endTime, executionTimeSeconds, status);

  /// Create a copy of AgentSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentSummaryImplCopyWith<_$AgentSummaryImpl> get copyWith =>
      __$$AgentSummaryImplCopyWithImpl<_$AgentSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentSummaryImplToJson(
      this,
    );
  }
}

abstract class _AgentSummary implements AgentSummary {
  const factory _AgentSummary(
      {required final String agentName,
      required final DateTime startTime,
      required final DateTime endTime,
      required final double executionTimeSeconds,
      required final String status}) = _$AgentSummaryImpl;

  factory _AgentSummary.fromJson(Map<String, dynamic> json) =
      _$AgentSummaryImpl.fromJson;

  @override
  String get agentName;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  double get executionTimeSeconds;
  @override
  String get status;

  /// Create a copy of AgentSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgentSummaryImplCopyWith<_$AgentSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StateTransition _$StateTransitionFromJson(Map<String, dynamic> json) {
  return _StateTransition.fromJson(json);
}

/// @nodoc
mixin _$StateTransition {
  String get fromAgent => throw _privateConstructorUsedError;
  String get toAgent => throw _privateConstructorUsedError;
  int get stateSize => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this StateTransition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StateTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StateTransitionCopyWith<StateTransition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateTransitionCopyWith<$Res> {
  factory $StateTransitionCopyWith(
          StateTransition value, $Res Function(StateTransition) then) =
      _$StateTransitionCopyWithImpl<$Res, StateTransition>;
  @useResult
  $Res call(
      {String fromAgent, String toAgent, int stateSize, DateTime timestamp});
}

/// @nodoc
class _$StateTransitionCopyWithImpl<$Res, $Val extends StateTransition>
    implements $StateTransitionCopyWith<$Res> {
  _$StateTransitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StateTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAgent = null,
    Object? toAgent = null,
    Object? stateSize = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      fromAgent: null == fromAgent
          ? _value.fromAgent
          : fromAgent // ignore: cast_nullable_to_non_nullable
              as String,
      toAgent: null == toAgent
          ? _value.toAgent
          : toAgent // ignore: cast_nullable_to_non_nullable
              as String,
      stateSize: null == stateSize
          ? _value.stateSize
          : stateSize // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateTransitionImplCopyWith<$Res>
    implements $StateTransitionCopyWith<$Res> {
  factory _$$StateTransitionImplCopyWith(_$StateTransitionImpl value,
          $Res Function(_$StateTransitionImpl) then) =
      __$$StateTransitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fromAgent, String toAgent, int stateSize, DateTime timestamp});
}

/// @nodoc
class __$$StateTransitionImplCopyWithImpl<$Res>
    extends _$StateTransitionCopyWithImpl<$Res, _$StateTransitionImpl>
    implements _$$StateTransitionImplCopyWith<$Res> {
  __$$StateTransitionImplCopyWithImpl(
      _$StateTransitionImpl _value, $Res Function(_$StateTransitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAgent = null,
    Object? toAgent = null,
    Object? stateSize = null,
    Object? timestamp = null,
  }) {
    return _then(_$StateTransitionImpl(
      fromAgent: null == fromAgent
          ? _value.fromAgent
          : fromAgent // ignore: cast_nullable_to_non_nullable
              as String,
      toAgent: null == toAgent
          ? _value.toAgent
          : toAgent // ignore: cast_nullable_to_non_nullable
              as String,
      stateSize: null == stateSize
          ? _value.stateSize
          : stateSize // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StateTransitionImpl implements _StateTransition {
  const _$StateTransitionImpl(
      {required this.fromAgent,
      required this.toAgent,
      required this.stateSize,
      required this.timestamp});

  factory _$StateTransitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateTransitionImplFromJson(json);

  @override
  final String fromAgent;
  @override
  final String toAgent;
  @override
  final int stateSize;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'StateTransition(fromAgent: $fromAgent, toAgent: $toAgent, stateSize: $stateSize, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateTransitionImpl &&
            (identical(other.fromAgent, fromAgent) ||
                other.fromAgent == fromAgent) &&
            (identical(other.toAgent, toAgent) || other.toAgent == toAgent) &&
            (identical(other.stateSize, stateSize) ||
                other.stateSize == stateSize) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fromAgent, toAgent, stateSize, timestamp);

  /// Create a copy of StateTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateTransitionImplCopyWith<_$StateTransitionImpl> get copyWith =>
      __$$StateTransitionImplCopyWithImpl<_$StateTransitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateTransitionImplToJson(
      this,
    );
  }
}

abstract class _StateTransition implements StateTransition {
  const factory _StateTransition(
      {required final String fromAgent,
      required final String toAgent,
      required final int stateSize,
      required final DateTime timestamp}) = _$StateTransitionImpl;

  factory _StateTransition.fromJson(Map<String, dynamic> json) =
      _$StateTransitionImpl.fromJson;

  @override
  String get fromAgent;
  @override
  String get toAgent;
  @override
  int get stateSize;
  @override
  DateTime get timestamp;

  /// Create a copy of StateTransition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateTransitionImplCopyWith<_$StateTransitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LLMInteraction _$LLMInteractionFromJson(Map<String, dynamic> json) {
  return _LLMInteraction.fromJson(json);
}

/// @nodoc
mixin _$LLMInteraction {
  String get agentName => throw _privateConstructorUsedError;
  String get runId => throw _privateConstructorUsedError;
  Map<String, dynamic> get requestData => throw _privateConstructorUsedError;
  Map<String, dynamic> get responseData => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this LLMInteraction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LLMInteraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LLMInteractionCopyWith<LLMInteraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LLMInteractionCopyWith<$Res> {
  factory $LLMInteractionCopyWith(
          LLMInteraction value, $Res Function(LLMInteraction) then) =
      _$LLMInteractionCopyWithImpl<$Res, LLMInteraction>;
  @useResult
  $Res call(
      {String agentName,
      String runId,
      Map<String, dynamic> requestData,
      Map<String, dynamic> responseData,
      DateTime timestamp});
}

/// @nodoc
class _$LLMInteractionCopyWithImpl<$Res, $Val extends LLMInteraction>
    implements $LLMInteractionCopyWith<$Res> {
  _$LLMInteractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LLMInteraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = null,
    Object? runId = null,
    Object? requestData = null,
    Object? responseData = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      runId: null == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String,
      requestData: null == requestData
          ? _value.requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      responseData: null == responseData
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LLMInteractionImplCopyWith<$Res>
    implements $LLMInteractionCopyWith<$Res> {
  factory _$$LLMInteractionImplCopyWith(_$LLMInteractionImpl value,
          $Res Function(_$LLMInteractionImpl) then) =
      __$$LLMInteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String agentName,
      String runId,
      Map<String, dynamic> requestData,
      Map<String, dynamic> responseData,
      DateTime timestamp});
}

/// @nodoc
class __$$LLMInteractionImplCopyWithImpl<$Res>
    extends _$LLMInteractionCopyWithImpl<$Res, _$LLMInteractionImpl>
    implements _$$LLMInteractionImplCopyWith<$Res> {
  __$$LLMInteractionImplCopyWithImpl(
      _$LLMInteractionImpl _value, $Res Function(_$LLMInteractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LLMInteraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = null,
    Object? runId = null,
    Object? requestData = null,
    Object? responseData = null,
    Object? timestamp = null,
  }) {
    return _then(_$LLMInteractionImpl(
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      runId: null == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String,
      requestData: null == requestData
          ? _value._requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      responseData: null == responseData
          ? _value._responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LLMInteractionImpl implements _LLMInteraction {
  const _$LLMInteractionImpl(
      {required this.agentName,
      required this.runId,
      required final Map<String, dynamic> requestData,
      required final Map<String, dynamic> responseData,
      required this.timestamp})
      : _requestData = requestData,
        _responseData = responseData;

  factory _$LLMInteractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LLMInteractionImplFromJson(json);

  @override
  final String agentName;
  @override
  final String runId;
  final Map<String, dynamic> _requestData;
  @override
  Map<String, dynamic> get requestData {
    if (_requestData is EqualUnmodifiableMapView) return _requestData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requestData);
  }

  final Map<String, dynamic> _responseData;
  @override
  Map<String, dynamic> get responseData {
    if (_responseData is EqualUnmodifiableMapView) return _responseData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_responseData);
  }

  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'LLMInteraction(agentName: $agentName, runId: $runId, requestData: $requestData, responseData: $responseData, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LLMInteractionImpl &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.runId, runId) || other.runId == runId) &&
            const DeepCollectionEquality()
                .equals(other._requestData, _requestData) &&
            const DeepCollectionEquality()
                .equals(other._responseData, _responseData) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentName,
      runId,
      const DeepCollectionEquality().hash(_requestData),
      const DeepCollectionEquality().hash(_responseData),
      timestamp);

  /// Create a copy of LLMInteraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LLMInteractionImplCopyWith<_$LLMInteractionImpl> get copyWith =>
      __$$LLMInteractionImplCopyWithImpl<_$LLMInteractionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LLMInteractionImplToJson(
      this,
    );
  }
}

abstract class _LLMInteraction implements LLMInteraction {
  const factory _LLMInteraction(
      {required final String agentName,
      required final String runId,
      required final Map<String, dynamic> requestData,
      required final Map<String, dynamic> responseData,
      required final DateTime timestamp}) = _$LLMInteractionImpl;

  factory _LLMInteraction.fromJson(Map<String, dynamic> json) =
      _$LLMInteractionImpl.fromJson;

  @override
  String get agentName;
  @override
  String get runId;
  @override
  Map<String, dynamic> get requestData;
  @override
  Map<String, dynamic> get responseData;
  @override
  DateTime get timestamp;

  /// Create a copy of LLMInteraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LLMInteractionImplCopyWith<_$LLMInteractionImpl> get copyWith =>
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
