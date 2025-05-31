import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../providers/ai_suggestion_provider.dart';
import '../../widgets/refresh_button.dart';
import '../../../data/models/ai_analysis_result.dart';

class AISuggestionsPage extends ConsumerStatefulWidget {
  const AISuggestionsPage({super.key});

  @override
  ConsumerState<AISuggestionsPage> createState() => _AISuggestionsPageState();
}

class _AISuggestionsPageState extends ConsumerState<AISuggestionsPage> {
  AISuggestionStatus? _selectedStatus;
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final suggestionsAsync = ref.watch(userAISuggestionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI建议历史'),
        actions: [
          RefreshButton.icon(
            onRefresh: () async {
              ref.invalidate(userAISuggestionsProvider);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 筛选和搜索
          _buildFilterSection(),

          // 建议列表
          Expanded(
            child: suggestionsAsync.when(
              data: (suggestions) => _buildSuggestionsList(suggestions),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => _buildErrorState(error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // 搜索框
          TextField(
            decoration: const InputDecoration(
              hintText: '搜索股票代码或名称',
              prefixIcon: Icon(LucideIcons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
          ),
          const SizedBox(height: 12),

          // 状态筛选
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterChip('全部', null),
                const SizedBox(width: 8),
                _buildFilterChip('待处理', AISuggestionStatus.pending),
                const SizedBox(width: 8),
                _buildFilterChip('已执行', AISuggestionStatus.executed),
                const SizedBox(width: 8),
                _buildFilterChip('已忽略', AISuggestionStatus.ignored),
                const SizedBox(width: 8),
                _buildFilterChip('已过期', AISuggestionStatus.expired),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, AISuggestionStatus? status) {
    final isSelected = _selectedStatus == status;

    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          _selectedStatus = selected ? status : null;
        });
      },
    );
  }

  Widget _buildSuggestionsList(List<AISuggestion> allSuggestions) {
    // 应用筛选
    var filteredSuggestions = allSuggestions.where((suggestion) {
      // 状态筛选
      if (_selectedStatus != null && suggestion.status != _selectedStatus) {
        return false;
      }

      // 搜索筛选
      if (_searchQuery.isNotEmpty) {
        final query = _searchQuery.toLowerCase();
        return suggestion.analysis.stockCode.toLowerCase().contains(query) ||
               suggestion.analysis.stockName.toLowerCase().contains(query);
      }

      return true;
    }).toList();

    if (filteredSuggestions.isEmpty) {
      return _buildEmptyState();
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        final suggestion = filteredSuggestions[index];
        return _buildSuggestionCard(suggestion);
      },
    );
  }

  Widget _buildSuggestionCard(AISuggestion suggestion) {
    final analysis = suggestion.analysis;
    final actionColor = analysis.action == 'buy'
        ? Colors.green
        : analysis.action == 'sell'
            ? Colors.red
            : Colors.grey;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => context.push('/ai-assistant/suggestion/${suggestion.id}'),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 头部信息
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${analysis.stockCode} - ${analysis.stockName}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '创建时间: ${_formatDateTime(suggestion.createdAt)}',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildStatusChip(suggestion.status),
                ],
              ),
              const SizedBox(height: 12),

              // 分析结果
              Row(
                children: [
                  Expanded(
                    child: _buildInfoItem(
                      '建议操作',
                      analysis.action.toUpperCase(),
                      actionColor,
                    ),
                  ),
                  Expanded(
                    child: _buildInfoItem(
                      '置信度',
                      '${(analysis.confidence * 100).toStringAsFixed(1)}%',
                      null,
                    ),
                  ),
                  Expanded(
                    child: _buildInfoItem(
                      '数量',
                      '${analysis.quantity}',
                      null,
                    ),
                  ),
                ],
              ),

              // 如果有用户备注
              if (suggestion.userNotes != null) ...[
                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '备注: ${suggestion.userNotes}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],

              // 操作按钮
              if (suggestion.status == AISuggestionStatus.pending) ...[
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => _ignoreSuggestion(suggestion),
                        icon: const Icon(LucideIcons.x, size: 16),
                        label: const Text('忽略'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => _convertToTransaction(suggestion),
                        icon: const Icon(LucideIcons.plus, size: 16),
                        label: const Text('转为交易'),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem(String label, String value, Color? valueColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: valueColor,
            fontWeight: FontWeight.w500,
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

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(LucideIcons.inbox, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            '暂无AI建议',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            '去分析一些股票吧',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => context.push('/ai-assistant/stock-analysis'),
            icon: const Icon(LucideIcons.zap),
            label: const Text('开始分析'),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(Object error) {
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
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => ref.invalidate(userAISuggestionsProvider),
            child: const Text('重试'),
          ),
        ],
      ),
    );
  }

  void _ignoreSuggestion(AISuggestion suggestion) {
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
                  .markAsIgnored(suggestion.id!, null);
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  void _convertToTransaction(AISuggestion suggestion) {
    final analysis = suggestion.analysis;
    context.push('/transactions/add', extra: {
      'stockCode': analysis.stockCode,
      'stockName': analysis.stockName,
      'amount': analysis.quantity.toString(),
      'aiSuggestion': true,
      'suggestionId': suggestion.id,
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} '
           '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
