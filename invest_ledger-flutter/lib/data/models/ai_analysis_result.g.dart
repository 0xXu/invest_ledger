// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AIAnalysisResultImpl _$$AIAnalysisResultImplFromJson(
        Map<String, dynamic> json) =>
    _$AIAnalysisResultImpl(
      stockCode: json['stockCode'] as String,
      stockName: json['stockName'] as String,
      action: json['action'] as String,
      quantity: (json['quantity'] as num).toInt(),
      confidence: (json['confidence'] as num).toDouble(),
      agentSignals: (json['agentSignals'] as List<dynamic>)
          .map((e) => AgentSignal.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasoning: json['reasoning'] as String,
      analysisTime: DateTime.parse(json['analysisTime'] as String),
      currentPrice: json['currentPrice'] == null
          ? null
          : Decimal.fromJson(json['currentPrice'] as String),
      suggestedPrice: json['suggestedPrice'] == null
          ? null
          : Decimal.fromJson(json['suggestedPrice'] as String),
      runId: json['runId'] as String?,
      detailedAnalysis:
          (json['detailedAnalysis'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, AgentDetailedAnalysis.fromJson(e as Map<String, dynamic>)),
      ),
      workflowFlow: json['workflowFlow'] == null
          ? null
          : WorkflowFlow.fromJson(json['workflowFlow'] as Map<String, dynamic>),
      llmInteractions: (json['llmInteractions'] as List<dynamic>?)
          ?.map((e) => LLMInteraction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AIAnalysisResultImplToJson(
        _$AIAnalysisResultImpl instance) =>
    <String, dynamic>{
      'stockCode': instance.stockCode,
      'stockName': instance.stockName,
      'action': instance.action,
      'quantity': instance.quantity,
      'confidence': instance.confidence,
      'agentSignals': instance.agentSignals,
      'reasoning': instance.reasoning,
      'analysisTime': instance.analysisTime.toIso8601String(),
      'currentPrice': instance.currentPrice,
      'suggestedPrice': instance.suggestedPrice,
      'runId': instance.runId,
      'detailedAnalysis': instance.detailedAnalysis,
      'workflowFlow': instance.workflowFlow,
      'llmInteractions': instance.llmInteractions,
    };

_$AgentSignalImpl _$$AgentSignalImplFromJson(Map<String, dynamic> json) =>
    _$AgentSignalImpl(
      agent: json['agent'] as String,
      signal: json['signal'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      reasoning: json['reasoning'] as String?,
    );

Map<String, dynamic> _$$AgentSignalImplToJson(_$AgentSignalImpl instance) =>
    <String, dynamic>{
      'agent': instance.agent,
      'signal': instance.signal,
      'confidence': instance.confidence,
      'reasoning': instance.reasoning,
    };

_$AgentDetailedAnalysisImpl _$$AgentDetailedAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentDetailedAnalysisImpl(
      agentName: json['agentName'] as String,
      displayName: json['displayName'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      executionTimeSeconds: (json['executionTimeSeconds'] as num).toDouble(),
      status: json['status'] as String,
      inputState: json['inputState'] as Map<String, dynamic>?,
      outputState: json['outputState'] as Map<String, dynamic>?,
      reasoning: json['reasoning'] as Map<String, dynamic>?,
      llmInteractionIds: (json['llmInteractionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      technicalData: json['technicalData'] == null
          ? null
          : TechnicalAnalysisData.fromJson(
              json['technicalData'] as Map<String, dynamic>),
      fundamentalData: json['fundamentalData'] == null
          ? null
          : FundamentalAnalysisData.fromJson(
              json['fundamentalData'] as Map<String, dynamic>),
      sentimentData: json['sentimentData'] == null
          ? null
          : SentimentAnalysisData.fromJson(
              json['sentimentData'] as Map<String, dynamic>),
      valuationData: json['valuationData'] == null
          ? null
          : ValuationAnalysisData.fromJson(
              json['valuationData'] as Map<String, dynamic>),
      riskData: json['riskData'] == null
          ? null
          : RiskAnalysisData.fromJson(json['riskData'] as Map<String, dynamic>),
      macroData: json['macroData'] == null
          ? null
          : MacroAnalysisData.fromJson(
              json['macroData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgentDetailedAnalysisImplToJson(
        _$AgentDetailedAnalysisImpl instance) =>
    <String, dynamic>{
      'agentName': instance.agentName,
      'displayName': instance.displayName,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'executionTimeSeconds': instance.executionTimeSeconds,
      'status': instance.status,
      'inputState': instance.inputState,
      'outputState': instance.outputState,
      'reasoning': instance.reasoning,
      'llmInteractionIds': instance.llmInteractionIds,
      'technicalData': instance.technicalData,
      'fundamentalData': instance.fundamentalData,
      'sentimentData': instance.sentimentData,
      'valuationData': instance.valuationData,
      'riskData': instance.riskData,
      'macroData': instance.macroData,
    };

_$TechnicalAnalysisDataImpl _$$TechnicalAnalysisDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TechnicalAnalysisDataImpl(
      signal: json['signal'] as String,
      confidence: json['confidence'] as String,
      strategySignals: (json['strategySignals'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, StrategySignal.fromJson(e as Map<String, dynamic>)),
      ),
      indicators: json['indicators'] as Map<String, dynamic>?,
      patterns: json['patterns'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TechnicalAnalysisDataImplToJson(
        _$TechnicalAnalysisDataImpl instance) =>
    <String, dynamic>{
      'signal': instance.signal,
      'confidence': instance.confidence,
      'strategySignals': instance.strategySignals,
      'indicators': instance.indicators,
      'patterns': instance.patterns,
    };

_$StrategySignalImpl _$$StrategySignalImplFromJson(Map<String, dynamic> json) =>
    _$StrategySignalImpl(
      signal: json['signal'] as String,
      confidence: json['confidence'] as String,
      metrics: json['metrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StrategySignalImplToJson(
        _$StrategySignalImpl instance) =>
    <String, dynamic>{
      'signal': instance.signal,
      'confidence': instance.confidence,
      'metrics': instance.metrics,
    };

_$FundamentalAnalysisDataImpl _$$FundamentalAnalysisDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FundamentalAnalysisDataImpl(
      signal: json['signal'] as String,
      confidence: json['confidence'] as String,
      reasoning: json['reasoning'] as Map<String, dynamic>?,
      metrics: json['metrics'] as Map<String, dynamic>?,
      ratios: json['ratios'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FundamentalAnalysisDataImplToJson(
        _$FundamentalAnalysisDataImpl instance) =>
    <String, dynamic>{
      'signal': instance.signal,
      'confidence': instance.confidence,
      'reasoning': instance.reasoning,
      'metrics': instance.metrics,
      'ratios': instance.ratios,
    };

_$SentimentAnalysisDataImpl _$$SentimentAnalysisDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SentimentAnalysisDataImpl(
      signal: json['signal'] as String,
      confidence: json['confidence'] as String,
      reasoning: json['reasoning'] as String?,
      sentimentScore: (json['sentimentScore'] as num?)?.toDouble(),
      newsCount: (json['newsCount'] as num?)?.toInt(),
      newsItems: (json['newsItems'] as List<dynamic>?)
          ?.map((e) => NewsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SentimentAnalysisDataImplToJson(
        _$SentimentAnalysisDataImpl instance) =>
    <String, dynamic>{
      'signal': instance.signal,
      'confidence': instance.confidence,
      'reasoning': instance.reasoning,
      'sentimentScore': instance.sentimentScore,
      'newsCount': instance.newsCount,
      'newsItems': instance.newsItems,
    };

_$NewsItemImpl _$$NewsItemImplFromJson(Map<String, dynamic> json) =>
    _$NewsItemImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      publishTime: DateTime.parse(json['publishTime'] as String),
      sentimentScore: (json['sentimentScore'] as num?)?.toDouble(),
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$NewsItemImplToJson(_$NewsItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'publishTime': instance.publishTime.toIso8601String(),
      'sentimentScore': instance.sentimentScore,
      'source': instance.source,
    };

_$ValuationAnalysisDataImpl _$$ValuationAnalysisDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ValuationAnalysisDataImpl(
      signal: json['signal'] as String,
      confidence: json['confidence'] as String,
      reasoning: json['reasoning'] as Map<String, dynamic>?,
      valuationMetrics: json['valuationMetrics'] as Map<String, dynamic>?,
      comparisons: json['comparisons'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ValuationAnalysisDataImplToJson(
        _$ValuationAnalysisDataImpl instance) =>
    <String, dynamic>{
      'signal': instance.signal,
      'confidence': instance.confidence,
      'reasoning': instance.reasoning,
      'valuationMetrics': instance.valuationMetrics,
      'comparisons': instance.comparisons,
    };

_$RiskAnalysisDataImpl _$$RiskAnalysisDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RiskAnalysisDataImpl(
      signal: json['signal'] as String,
      confidence: json['confidence'] as String,
      riskMetrics: json['riskMetrics'] as Map<String, dynamic>?,
      constraints: json['constraints'] as Map<String, dynamic>?,
      maxPositionSize: (json['maxPositionSize'] as num?)?.toDouble(),
      riskScore: (json['riskScore'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RiskAnalysisDataImplToJson(
        _$RiskAnalysisDataImpl instance) =>
    <String, dynamic>{
      'signal': instance.signal,
      'confidence': instance.confidence,
      'riskMetrics': instance.riskMetrics,
      'constraints': instance.constraints,
      'maxPositionSize': instance.maxPositionSize,
      'riskScore': instance.riskScore,
    };

_$MacroAnalysisDataImpl _$$MacroAnalysisDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MacroAnalysisDataImpl(
      signal: json['signal'] as String,
      confidence: json['confidence'] as String,
      reasoning: json['reasoning'] as String?,
      macroIndicators: json['macroIndicators'] as Map<String, dynamic>?,
      marketConditions: json['marketConditions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MacroAnalysisDataImplToJson(
        _$MacroAnalysisDataImpl instance) =>
    <String, dynamic>{
      'signal': instance.signal,
      'confidence': instance.confidence,
      'reasoning': instance.reasoning,
      'macroIndicators': instance.macroIndicators,
      'marketConditions': instance.marketConditions,
    };

_$WorkflowFlowImpl _$$WorkflowFlowImplFromJson(Map<String, dynamic> json) =>
    _$WorkflowFlowImpl(
      runId: json['runId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      agents: (json['agents'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, AgentSummary.fromJson(e as Map<String, dynamic>)),
      ),
      stateTransitions: (json['stateTransitions'] as List<dynamic>)
          .map((e) => StateTransition.fromJson(e as Map<String, dynamic>))
          .toList(),
      finalDecision: json['finalDecision'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WorkflowFlowImplToJson(_$WorkflowFlowImpl instance) =>
    <String, dynamic>{
      'runId': instance.runId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'agents': instance.agents,
      'stateTransitions': instance.stateTransitions,
      'finalDecision': instance.finalDecision,
    };

_$AgentSummaryImpl _$$AgentSummaryImplFromJson(Map<String, dynamic> json) =>
    _$AgentSummaryImpl(
      agentName: json['agentName'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      executionTimeSeconds: (json['executionTimeSeconds'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$AgentSummaryImplToJson(_$AgentSummaryImpl instance) =>
    <String, dynamic>{
      'agentName': instance.agentName,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'executionTimeSeconds': instance.executionTimeSeconds,
      'status': instance.status,
    };

_$StateTransitionImpl _$$StateTransitionImplFromJson(
        Map<String, dynamic> json) =>
    _$StateTransitionImpl(
      fromAgent: json['fromAgent'] as String,
      toAgent: json['toAgent'] as String,
      stateSize: (json['stateSize'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$StateTransitionImplToJson(
        _$StateTransitionImpl instance) =>
    <String, dynamic>{
      'fromAgent': instance.fromAgent,
      'toAgent': instance.toAgent,
      'stateSize': instance.stateSize,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$LLMInteractionImpl _$$LLMInteractionImplFromJson(Map<String, dynamic> json) =>
    _$LLMInteractionImpl(
      agentName: json['agentName'] as String,
      runId: json['runId'] as String,
      requestData: json['requestData'] as Map<String, dynamic>,
      responseData: json['responseData'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$LLMInteractionImplToJson(
        _$LLMInteractionImpl instance) =>
    <String, dynamic>{
      'agentName': instance.agentName,
      'runId': instance.runId,
      'requestData': instance.requestData,
      'responseData': instance.responseData,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$AISuggestionImpl _$$AISuggestionImplFromJson(Map<String, dynamic> json) =>
    _$AISuggestionImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      analysis:
          AIAnalysisResult.fromJson(json['analysis'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      executedAt: json['executedAt'] == null
          ? null
          : DateTime.parse(json['executedAt'] as String),
      transactionId: json['transactionId'] as String?,
      status:
          $enumDecodeNullable(_$AISuggestionStatusEnumMap, json['status']) ??
              AISuggestionStatus.pending,
      userNotes: json['userNotes'] as String?,
    );

Map<String, dynamic> _$$AISuggestionImplToJson(_$AISuggestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'analysis': instance.analysis,
      'createdAt': instance.createdAt.toIso8601String(),
      'executedAt': instance.executedAt?.toIso8601String(),
      'transactionId': instance.transactionId,
      'status': _$AISuggestionStatusEnumMap[instance.status]!,
      'userNotes': instance.userNotes,
    };

const _$AISuggestionStatusEnumMap = {
  AISuggestionStatus.pending: 'pending',
  AISuggestionStatus.executed: 'executed',
  AISuggestionStatus.ignored: 'ignored',
  AISuggestionStatus.expired: 'expired',
};
