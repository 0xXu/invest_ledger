import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../widgets/refresh_button.dart';

/// 刷新按钮测试页面
class RefreshButtonTestPage extends ConsumerStatefulWidget {
  const RefreshButtonTestPage({super.key});

  @override
  ConsumerState<RefreshButtonTestPage> createState() => _RefreshButtonTestPageState();
}

class _RefreshButtonTestPageState extends ConsumerState<RefreshButtonTestPage> {
  int _counter = 0;
  String _lastRefreshTime = '未刷新';

  Future<void> _simulateRefresh() async {
    // 模拟网络请求延迟
    await Future.delayed(const Duration(seconds: 2));
    
    setState(() {
      _counter++;
      _lastRefreshTime = DateTime.now().toString().substring(11, 19);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('刷新按钮测试'),
        actions: [
          RefreshButton.icon(
            onRefresh: _simulateRefresh,
            loadingMessage: '正在刷新数据...',
            tooltip: '刷新数据',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '刷新按钮组件测试',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '测试数据',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(LucideIcons.activity, color: Colors.blue),
                        const SizedBox(width: 8),
                        Text('刷新次数: $_counter'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(LucideIcons.clock, color: Colors.green),
                        const SizedBox(width: 8),
                        Text('最后刷新: $_lastRefreshTime'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            Text(
              '不同样式的刷新按钮',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            
            // 图标按钮样式
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '图标按钮样式',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        RefreshButton.icon(
                          onRefresh: _simulateRefresh,
                          loadingMessage: '正在刷新...',
                          tooltip: '刷新',
                        ),
                        const SizedBox(width: 16),
                        const Text('点击图标刷新'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            
            // 文本按钮样式
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '文本按钮样式',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    RefreshButton.text(
                      onRefresh: _simulateRefresh,
                      loadingMessage: '正在刷新...',
                      label: '刷新数据',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            
            // 填充按钮样式
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '填充按钮样式',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    RefreshButton.filled(
                      onRefresh: _simulateRefresh,
                      loadingMessage: '正在刷新...',
                      label: '刷新数据',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
