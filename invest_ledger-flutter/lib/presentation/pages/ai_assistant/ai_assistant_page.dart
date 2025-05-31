import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../providers/ai_suggestion_provider.dart';
import '../../providers/user_provider.dart';
import '../../widgets/refresh_button.dart';

class AIAssistantPage extends ConsumerWidget {
  const AIAssistantPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final aiServiceStatus = ref.watch(aiServiceStatusProvider);
    final pendingSuggestions = ref.watch(pendingAISuggestionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('AI投资助手 - ${user?.name ?? ''}'),
        actions: [
          RefreshButton.icon(
            onRefresh: () async {
              ref.invalidate(aiServiceStatusProvider);
              ref.invalidate(pendingAISuggestionsProvider);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AI服务状态卡片
            _buildServiceStatusCard(context, ref, aiServiceStatus),
            const SizedBox(height: 16),

            // 快速分析区域
            _buildQuickAnalysisCard(context),
            const SizedBox(height: 16),

            // 待处理建议
            _buildPendingSuggestionsCard(context, pendingSuggestions),
            const SizedBox(height: 16),

            // 功能菜单
            _buildFeatureMenu(context),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceStatusCard(BuildContext context, WidgetRef ref, AsyncValue<bool> serviceStatus) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(LucideIcons.activity, size: 20),
                const SizedBox(width: 8),
                Text(
                  'AI服务状态',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 12),
            serviceStatus.when(
              data: (isAvailable) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        isAvailable ? LucideIcons.checkCircle : LucideIcons.xCircle,
                        color: isAvailable ? Colors.green : Colors.red,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        isAvailable ? '服务正常' : '服务不可用',
                        style: TextStyle(
                          color: isAvailable ? Colors.green : Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  if (!isAvailable) ...[
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: () => _showServiceConfigDialog(context, ref),
                      icon: const Icon(LucideIcons.settings, size: 16),
                      label: const Text('配置服务'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ],
              ),
              loading: () => const Row(
                children: [
                  SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  SizedBox(width: 8),
                  Text('检查中...'),
                ],
              ),
              error: (error, _) => Row(
                children: [
                  const Icon(LucideIcons.alertTriangle, color: Colors.orange, size: 16),
                  const SizedBox(width: 8),
                  Text('检查失败: ${error.toString()}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAnalysisCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(LucideIcons.zap, size: 20),
                const SizedBox(width: 8),
                Text(
                  '快速分析',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '输入股票代码，获取AI智能分析建议',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => context.push('/ai-assistant/stock-analysis'),
                icon: const Icon(LucideIcons.search),
                label: const Text('开始分析'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPendingSuggestionsCard(BuildContext context, AsyncValue<List<dynamic>> pendingSuggestions) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(LucideIcons.clock, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      '待处理建议',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => context.push('/ai-assistant/suggestions'),
                  child: const Text('查看全部'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            pendingSuggestions.when(
              data: (suggestions) {
                if (suggestions.isEmpty) {
                  return Text(
                    '暂无待处理建议',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  );
                }
                return Column(
                  children: suggestions.take(3).map((suggestion) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        suggestion.analysis.action == 'buy'
                            ? LucideIcons.trendingUp
                            : suggestion.analysis.action == 'sell'
                                ? LucideIcons.trendingDown
                                : LucideIcons.minus,
                        color: suggestion.analysis.action == 'buy'
                            ? Colors.green
                            : suggestion.analysis.action == 'sell'
                                ? Colors.red
                                : Colors.grey,
                      ),
                      title: Text('${suggestion.analysis.stockCode} - ${suggestion.analysis.stockName}'),
                      subtitle: Text('${suggestion.analysis.action.toUpperCase()} | 置信度: ${(suggestion.analysis.confidence * 100).toStringAsFixed(1)}%'),
                      trailing: const Icon(LucideIcons.chevronRight, size: 16),
                      onTap: () => context.push('/ai-assistant/suggestion/${suggestion.id}'),
                    );
                  }).toList(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Text('加载失败: ${error.toString()}'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureMenu(BuildContext context) {
    final features = [
      {
        'title': '股票分析',
        'subtitle': '获取AI智能分析建议',
        'icon': LucideIcons.barChart3,
        'route': '/ai-assistant/stock-analysis',
      },
      {
        'title': 'AI建议历史',
        'subtitle': '查看所有AI投资建议',
        'icon': LucideIcons.history,
        'route': '/ai-assistant/suggestions',
      },
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '功能菜单',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            ...features.map((feature) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(feature['icon'] as IconData),
              title: Text(feature['title'] as String),
              subtitle: Text(feature['subtitle'] as String),
              trailing: const Icon(LucideIcons.chevronRight, size: 16),
              onTap: () => context.push(feature['route'] as String),
            )),
          ],
        ),
      ),
    );
  }

  void _showServiceConfigDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => _ServiceConfigDialog(),
    );
  }
}

class _ServiceConfigDialog extends ConsumerStatefulWidget {
  @override
  ConsumerState<_ServiceConfigDialog> createState() => _ServiceConfigDialogState();
}

class _ServiceConfigDialogState extends ConsumerState<_ServiceConfigDialog> {
  final _urlController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadCurrentUrl();
  }

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  void _loadCurrentUrl() async {
    final config = ref.read(aiServiceConfigProvider);
    config.when(
      data: (url) => _urlController.text = url,
      loading: () {},
      error: (_, __) {},
    );
  }

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      title: const Text('AI服务配置'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '请输入AI服务的API地址：',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: 'API地址',
                prefixIcon: Icon(LucideIcons.globe),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入API地址';
                }
                final uri = Uri.tryParse(value);
                if (uri == null || !uri.hasAbsolutePath) {
                  return '请输入有效的URL地址';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            Text(
              '常用地址：',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                _buildQuickUrlChip('本地', 'http://localhost:8000'),
                _buildQuickUrlChip('局域网', 'http://192.168.1.100:8000'),
                _buildQuickUrlChip('云服务', 'https://your-ai-service.com'),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isLoading ? null : () => Navigator.of(context).pop(),
          child: const Text('取消'),
        ),
        TextButton(
          onPressed: _isLoading ? null : _resetToDefault,
          child: const Text('重置默认'),
        ),
        ElevatedButton(
          onPressed: _isLoading ? null : _saveConfig,
          child: _isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('保存'),
        ),
      ],
    );
  }

  Widget _buildQuickUrlChip(String label, String url) {
    return ActionChip(
      label: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      side: BorderSide(
        color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.5),
      ),
      onPressed: () {
        _urlController.text = url;
      },
    );
  }

  void _saveConfig() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      await ref.read(aiServiceConfigNotifierProvider.notifier)
          .updateServiceUrl(_urlController.text.trim());

      if (mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('配置已保存')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('保存失败: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _resetToDefault() async {
    setState(() {
      _isLoading = true;
    });

    try {
      await ref.read(aiServiceConfigNotifierProvider.notifier).resetToDefault();
      _urlController.text = 'http://localhost:8000';

      if (mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('已重置为默认配置')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('重置失败: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
