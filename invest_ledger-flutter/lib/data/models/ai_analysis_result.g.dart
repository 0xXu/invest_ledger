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
