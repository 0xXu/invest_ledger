import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../providers/ai_suggestion_provider.dart';
import '../../../data/models/ai_analysis_result.dart';

class SuggestionDetailPage extends ConsumerWidget {
  final String suggestionId;

  const SuggestionDetailPage({
    super.key,
    required this.suggestionId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestionAsync = ref.watch(suggestionDetailProvider(suggestionId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('建议详情'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) => _handleMenuAction(context, ref, value),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    Icon(LucideIcons.trash2, size: 16),
                    SizedBox(width: 8),
                    Text('删除'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: suggestionAsync.when(
        data: (suggestion) => suggestion != null
            ? _buildSuggestionDetail(context, ref, suggestion)
            : _buildNotFoundState(context),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => _buildErrorState(context, error),
      ),
    );
  }

  Widget _buildSuggestionDetail(BuildContext context, WidgetRef ref, AISuggestion suggestion) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 基本信息卡片
          _buildBasicInfoCard(context, suggestion),
          const SizedBox(height: 16),
          
          // 分析结果卡片
          _buildAnalysisCard(context, suggestion.analysis),
          const SizedBox(height: 16),
          
          // Agent信号卡片
          _buildAgentSignalsCard(context, suggestion.analysis.agentSignals),
          const SizedBox(height: 16),
          
          // 推理过程卡片
          _buildReasoningCard(context, suggestion.analysis.reasoning),
          const SizedBox(height: 16),
          
          // 状态和备注卡片
          _buildStatusCard(context, suggestion),
          const SizedBox(height: 24),
          
          // 操作按钮
          _buildActionButtons(context, ref, suggestion),
        ],
      ),
    );
  }

  Widget _buildBasicInfoCard(BuildContext context, AISuggestion suggestion) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(LucideIcons.info),
                const SizedBox(width: 8),
                Text(
                  '基本信息',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildInfoRow('股票代码', suggestion.analysis.stockCode),
            _buildInfoRow('股票名称', suggestion.analysis.stockName),
            _buildInfoRow('创建时间', _formatDateTime(suggestion.createdAt)),
            if (suggestion.executedAt != null)
              _buildInfoRow('执行时间', _formatDateTime(suggestion.executedAt!)),
            if (suggestion.transactionId != null)
              _buildInfoRow('关联交易', suggestion.transactionId!),
          ],
        ),
      ),
    );
  }

  Widget _buildAnalysisCard(BuildContext context, AIAnalysisResult analysis) {
    final actionColor = analysis.action == 'buy' 
        ? Colors.green 
        : analysis.action == 'sell'
            ? Colors.red
            : Colors.grey;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Row(
              children: [
                Expanded(
                  child: _buildAnalysisItem(
                    context,
                    '建议操作',
                    analysis.action.toUpperCase(),
                    actionColor,
                  ),
                ),
                Expanded(
                  child: _buildAnalysisItem(
                    context,
                    '置信度',
                    '${(analysis.confidence * 100).toStringAsFixed(1)}%',
                    null,
                  ),
                ),
                Expanded(
                  child: _buildAnalysisItem(
                    context,
                    '建议数量',
                    '${analysis.quantity}',
                    null,
                  ),
                ),
              ],
            ),
            if (analysis.currentPrice != null) ...[
              const SizedBox(height: 12),
              _buildInfoRow('当前价格', '¥${analysis.currentPrice}'),
            ],
            if (analysis.suggestedPrice != null) ...[
              const SizedBox(height: 4),
              _buildInfoRow('建议价格', '¥${analysis.suggestedPrice}'),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAgentSignalsCard(BuildContext context, List<AgentSignal> signals) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(LucideIcons.users),
                const SizedBox(width: 8),
                Text(
                  'Agent分析',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...signals.map((signal) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          signal.agent,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
                      Text(
                        '${(signal.confidence * 100).toStringAsFixed(1)}%',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  if (signal.reasoning != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      signal.reasoning!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildReasoningCard(BuildContext context, String reasoning) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(LucideIcons.messageSquare),
                const SizedBox(width: 8),
                Text(
                  '推理过程',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                reasoning,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(BuildContext context, AISuggestion suggestion) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(LucideIcons.flag),
                const SizedBox(width: 8),
                Text(
                  '状态信息',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text('状态: '),
                _buildStatusChip(suggestion.status),
              ],
            ),
            if (suggestion.userNotes != null) ...[
              const SizedBox(height: 12),
              Text(
                '用户备注:',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                suggestion.userNotes!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, WidgetRef ref, AISuggestion suggestion) {
    if (suggestion.status != AISuggestionStatus.pending) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () => _convertToTransaction(context, suggestion),
            icon: const Icon(LucideIcons.plus),
            label: const Text('转为交易记录'),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _addNotes(context, ref, suggestion),
                icon: const Icon(LucideIcons.edit),
                label: const Text('添加备注'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _ignoreSuggestion(context, ref, suggestion),
                icon: const Icon(LucideIcons.x),
                label: const Text('忽略建议'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildAnalysisItem(BuildContext context, String label, String value, Color? valueColor) {
    return Column(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: valueColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusChip(AISuggestionStatus status) {
    Color color;
    String label;
    
    switch (status) {
      case AISuggestionStatus.pending:
        color = Colors.orange;
        label = '待处理';
        break;
      case AISuggestionStatus.executed:
        color = Colors.green;
        label = '已执行';
        break;
      case AISuggestionStatus.ignored:
        color = Colors.grey;
        label = '已忽略';
        break;
      case AISuggestionStatus.expired:
        color = Colors.red;
        label = '已过期';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildNotFoundState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(LucideIcons.searchX, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            '建议不存在',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => context.pop(),
            child: const Text('返回'),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(LucideIcons.alertTriangle, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(
            '加载失败',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            error.toString(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => context.pop(),
            child: const Text('返回'),
          ),
        ],
      ),
    );
  }

  void _handleMenuAction(BuildContext context, WidgetRef ref, String action) {
    switch (action) {
      case 'delete':
        _deleteSuggestion(context, ref);
        break;
    }
  }

  void _deleteSuggestion(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('删除建议'),
        content: const Text('确定要删除这个AI建议吗？此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              await ref.read(aiSuggestionNotifierProvider.notifier)
                  .deleteSuggestion(suggestionId);
              if (context.mounted) {
                context.pop();
              }
            },
            child: const Text('删除'),
          ),
        ],
      ),
    );
  }

  void _convertToTransaction(BuildContext context, AISuggestion suggestion) {
    final analysis = suggestion.analysis;
    context.push('/transactions/add', extra: {
      'stockCode': analysis.stockCode,
      'stockName': analysis.stockName,
      'amount': analysis.quantity.toString(),
      'aiSuggestion': true,
      'suggestionId': suggestion.id,
    });
  }

  void _addNotes(BuildContext context, WidgetRef ref, AISuggestion suggestion) {
    final controller = TextEditingController(text: suggestion.userNotes ?? '');
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('添加备注'),
        content: TextField(
          controller: controller,
          maxLines: 3,
          decoration: const InputDecoration(
            hintText: '输入备注信息...',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              final updatedSuggestion = suggestion.copyWith(
                userNotes: controller.text.trim().isEmpty ? null : controller.text.trim(),
              );
              await ref.read(aiSuggestionNotifierProvider.notifier)
                  .updateSuggestion(updatedSuggestion);
              ref.invalidate(suggestionDetailProvider(suggestionId));
            },
            child: const Text('保存'),
          ),
        ],
      ),
    );
  }

  void _ignoreSuggestion(BuildContext context, WidgetRef ref, AISuggestion suggestion) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('忽略建议'),
        content: const Text('确定要忽略这个AI建议吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              await ref.read(aiSuggestionNotifierProvider.notifier)
                  .markAsIgnored(suggestion.id!, suggestion.userNotes);
              ref.invalidate(suggestionDetailProvider(suggestionId));
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} '
           '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
