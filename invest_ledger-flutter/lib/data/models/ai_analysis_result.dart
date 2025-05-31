import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decimal/decimal.dart';

part 'ai_analysis_result.freezed.dart';
part 'ai_analysis_result.g.dart';

@freezed
class AIAnalysisResult with _$AIAnalysisResult {
  const factory AIAnalysisResult({
    required String stockCode,
    required String stockName,
    required String action, // "buy", "sell", "hold"
    required int quantity,
    required double confidence,
    required List<AgentSignal> agentSignals,
    required String reasoning,
    required DateTime analysisTime,
    Decimal? currentPrice,
    Decimal? suggestedPrice,
  }) = _AIAnalysisResult;

  factory AIAnalysisResult.fromJson(Map<String, dynamic> json) =>
      _$AIAnalysisResultFromJson(json);
}

@freezed
class AgentSignal with _$AgentSignal {
  const factory AgentSignal({
    required String agent,
    required String signal, // "bullish", "bearish", "neutral"
    required double confidence,
    String? reasoning,
  }) = _AgentSignal;

  factory AgentSignal.fromJson(Map<String, dynamic> json) =>
      _$AgentSignalFromJson(json);
}

@freezed
class AISuggestion with _$AISuggestion {
  const factory AISuggestion({
    String? id,
    required String userId,
    required AIAnalysisResult analysis,
    required DateTime createdAt,
    DateTime? executedAt,
    String? transactionId, // 如果用户执行了建议，关联的交易ID
    @Default(AISuggestionStatus.pending) AISuggestionStatus status,
    String? userNotes,
  }) = _AISuggestion;

  factory AISuggestion.fromJson(Map<String, dynamic> json) =>
      _$AISuggestionFromJson(json);
}

enum AISuggestionStatus {
  pending,    // 待处理
  executed,   // 已执行
  ignored,    // 已忽略
  expired,    // 已过期
}
