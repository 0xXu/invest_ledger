import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/ai_analysis_result.dart';

class AIService {
  static const String _defaultBaseUrl = 'http://localhost:8000';
  static const String _baseUrlKey = 'ai_service_base_url';

  String? _cachedBaseUrl;

  Future<String> get baseUrl async {
    if (_cachedBaseUrl != null) return _cachedBaseUrl!;

    final prefs = await SharedPreferences.getInstance();
    _cachedBaseUrl = prefs.getString(_baseUrlKey) ?? _defaultBaseUrl;
    return _cachedBaseUrl!;
  }

  Future<void> setBaseUrl(String url) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_baseUrlKey, url);
    _cachedBaseUrl = url;
  }

  Future<void> resetToDefault() async {
    await setBaseUrl(_defaultBaseUrl);
  }

  // 分析股票
  Future<AIAnalysisResult> analyzeStock({
    required String stockCode,
    bool showReasoning = false,
    double initialCapital = 100000,
    int numOfNews = 5,
  }) async {
    try {
      final url = await baseUrl;
      final response = await http.post(
        Uri.parse('$url/analysis/start'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'ticker': stockCode,
          'show_reasoning': showReasoning,
          'initial_capital': initialCapital,
          'num_of_news': numOfNews,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return _parseAnalysisResult(stockCode, data);
      } else {
        throw AIServiceException('分析请求失败: ${response.statusCode}');
      }
    } catch (e) {
      throw AIServiceException('网络请求失败: $e');
    }
  }

  // 获取工作流状态
  Future<Map<String, dynamic>> getWorkflowStatus() async {
    try {
      final url = await baseUrl;
      final response = await http.get(
        Uri.parse('$url/api/workflow/status'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw AIServiceException('获取状态失败: ${response.statusCode}');
      }
    } catch (e) {
      throw AIServiceException('网络请求失败: $e');
    }
  }

  // 获取历史运行记录
  Future<List<Map<String, dynamic>>> getHistoryRuns() async {
    try {
      final url = await baseUrl;
      final response = await http.get(
        Uri.parse('$url/runs/'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return List<Map<String, dynamic>>.from(data);
      } else {
        throw AIServiceException('获取历史记录失败: ${response.statusCode}');
      }
    } catch (e) {
      throw AIServiceException('网络请求失败: $e');
    }
  }

  // 解析AI分析结果
  AIAnalysisResult _parseAnalysisResult(String stockCode, Map<String, dynamic> data) {
    // 从API响应中提取股票名称（如果有的话）
    String stockName = stockCode; // 默认使用股票代码

    // 解析agent信号
    List<AgentSignal> agentSignals = [];
    if (data['agent_signals'] != null) {
      agentSignals = (data['agent_signals'] as List)
          .map((signal) => AgentSignal(
                agent: signal['agent'] ?? '',
                signal: signal['signal'] ?? 'neutral',
                confidence: (signal['confidence'] ?? 0.0).toDouble(),
                reasoning: signal['reasoning'],
              ))
          .toList();
    }

    return AIAnalysisResult(
      stockCode: stockCode,
      stockName: stockName,
      action: data['action'] ?? 'hold',
      quantity: data['quantity'] ?? 0,
      confidence: (data['confidence'] ?? 0.0).toDouble(),
      agentSignals: agentSignals,
      reasoning: data['reasoning'] ?? '',
      analysisTime: DateTime.now(),
    );
  }

  // 检查AI服务是否可用
  Future<bool> isServiceAvailable() async {
    try {
      final url = await baseUrl;
      final response = await http.get(
        Uri.parse('$url/'),
        headers: {
          'Content-Type': 'application/json',
        },
      ).timeout(const Duration(seconds: 5));

      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}

class AIServiceException implements Exception {
  final String message;
  AIServiceException(this.message);

  @override
  String toString() => 'AIServiceException: $message';
}
