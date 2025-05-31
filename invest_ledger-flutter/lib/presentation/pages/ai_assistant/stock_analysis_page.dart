import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../providers/ai_suggestion_provider.dart';
import '../../providers/user_provider.dart';
import '../../widgets/refresh_button.dart';
import '../../../data/models/ai_analysis_result.dart';

class StockAnalysisPage extends ConsumerStatefulWidget {
  const StockAnalysisPage({super.key});

  @override
  ConsumerState<StockAnalysisPage> createState() => _StockAnalysisPageState();
}

class _StockAnalysisPageState extends ConsumerState<StockAnalysisPage> {
  final _stockCodeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showReasoning = false;
  double _initialCapital = 100000;
  int _numOfNews = 5;

  @override
  void dispose() {
    _stockCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final analysisState = ref.watch(stockAnalysisProvider);
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('股票分析'),
        actions: [
          RefreshButton.icon(
            onRefresh: () async {
              ref.read(stockAnalysisProvider.notifier).clearAnalysis();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 分析表单
            _buildAnalysisForm(),
            const SizedBox(height: 24),

            // 分析结果
            analysisState.when(
              data: (result) => result != null
                  ? _buildAnalysisResult(result, user)
                  : const SizedBox.shrink(),
              loading: () => _buildLoadingState(),
              error: (error, _) => _buildErrorState(error),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnalysisForm() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '分析参数',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),

              // 股票代码输入
              TextFormField(
                controller: _stockCodeController,
                decoration: const InputDecoration(
                  labelText: '股票代码',
                  hintText: '例如: 000001',
                  prefixIcon: Icon(LucideIcons.search),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入股票代码';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // 高级选项
              ExpansionTile(
                title: const Text('高级选项'),
                children: [
                  // 显示推理过程
                  SwitchListTile(
                    title: const Text('显示推理过程'),
                    subtitle: const Text('显示AI分析的详细推理过程'),
                    value: _showReasoning,
                    onChanged: (value) {
                      setState(() {
                        _showReasoning = value;
                      });
                    },
                  ),

                  // 初始资金
                  ListTile(
                    title: const Text('初始资金'),
                    subtitle: Text('¥${_initialCapital.toStringAsFixed(0)}'),
                    trailing: IconButton(
                      icon: const Icon(LucideIcons.edit),
                      onPressed: () => _showCapitalDialog(),
                    ),
                  ),

                  // 新闻数量
                  ListTile(
                    title: const Text('分析新闻数量'),
                    subtitle: Text('${_numOfNews}条'),
                    trailing: IconButton(
                      icon: const Icon(LucideIcons.edit),
                      onPressed: () => _showNewsCountDialog(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // 分析按钮
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _analyzeStock,
                  icon: const Icon(LucideIcons.zap),
                  label: const Text('开始分析'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('AI正在分析中，请稍候...'),
            SizedBox(height: 8),
            Text(
              '这可能需要几分钟时间',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(LucideIcons.alertTriangle, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(
              '分析失败',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _analyzeStock,
              child: const Text('重试'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnalysisResult(AIAnalysisResult result, user) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 标题
            Row(
              children: [
                const Icon(LucideIcons.barChart3),
                const SizedBox(width: 8),
                Text(
                  '分析结果',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // 基本信息
            _buildBasicInfo(result),
            const SizedBox(height: 16),

            // Agent信号
            _buildAgentSignals(result.agentSignals),
            const SizedBox(height: 16),

            // 推理过程
            if (_showReasoning) ...[
              _buildReasoning(result.reasoning),
              const SizedBox(height: 16),
            ],

            // 操作按钮
            _buildActionButtons(result, user),
          ],
        ),
      ),
    );
  }

  Widget _buildBasicInfo(AIAnalysisResult result) {
    final actionColor = result.action == 'buy'
        ? Colors.green
        : result.action == 'sell'
            ? Colors.red
            : Colors.grey;

    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text('${result.stockCode} - ${result.stockName}'),
          subtitle: Text('分析时间: ${result.analysisTime.toString().substring(0, 19)}'),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  '建议操作',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  result.action.toUpperCase(),
                  style: TextStyle(
                    color: actionColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '置信度',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  '${(result.confidence * 100).toStringAsFixed(1)}%',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '建议数量',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  '${result.quantity}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAgentSignals(List<AgentSignal> signals) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Agent分析',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        ...signals.map((signal) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(signal.agent),
              ),
              Expanded(
                child: Text(
                  signal.signal.toUpperCase(),
                  style: TextStyle(
                    color: signal.signal == 'bullish'
                        ? Colors.green
                        : signal.signal == 'bearish'
                            ? Colors.red
                            : Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '${(signal.confidence * 100).toStringAsFixed(1)}%',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _buildReasoning(String reasoning) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '推理过程',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceVariant,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            reasoning,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons(AIAnalysisResult result, user) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => _saveSuggestion(result, user),
            icon: const Icon(LucideIcons.save),
            label: const Text('保存建议'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _convertToTransaction(result),
            icon: const Icon(LucideIcons.plus),
            label: const Text('转为交易'),
          ),
        ),
      ],
    );
  }

  void _analyzeStock() {
    if (_formKey.currentState!.validate()) {
      ref.read(stockAnalysisProvider.notifier).analyzeStock(
        stockCode: _stockCodeController.text.trim(),
        showReasoning: _showReasoning,
        initialCapital: _initialCapital,
        numOfNews: _numOfNews,
      );
    }
  }

  void _saveSuggestion(AIAnalysisResult result, user) async {
    if (user == null) return;

    try {
      await ref.read(aiSuggestionNotifierProvider.notifier).saveSuggestion(
        userId: user.id,
        analysis: result,
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('建议已保存')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('保存失败: $e')),
        );
      }
    }
  }

  void _convertToTransaction(AIAnalysisResult result) {
    // 导航到添加交易页面，并预填充数据
    context.push('/transactions/add', extra: {
      'stockCode': result.stockCode,
      'stockName': result.stockName,
      'amount': result.quantity.toString(),
      'aiSuggestion': true,
    });
  }

  void _showCapitalDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('设置初始资金'),
        content: TextFormField(
          initialValue: _initialCapital.toString(),
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: '金额',
            prefixText: '¥',
          ),
          onChanged: (value) {
            final amount = double.tryParse(value);
            if (amount != null) {
              _initialCapital = amount;
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              setState(() {});
              Navigator.of(context).pop();
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  void _showNewsCountDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('设置新闻数量'),
        content: TextFormField(
          initialValue: _numOfNews.toString(),
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: '数量',
            suffixText: '条',
          ),
          onChanged: (value) {
            final count = int.tryParse(value);
            if (count != null && count > 0 && count <= 100) {
              _numOfNews = count;
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              setState(() {});
              Navigator.of(context).pop();
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }
}
