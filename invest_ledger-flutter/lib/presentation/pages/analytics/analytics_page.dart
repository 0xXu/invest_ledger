import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalyticsPage extends ConsumerWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('数据分析'),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: 导出报告
            },
            icon: const Icon(Icons.file_download),
          ),
        ],
      ),
      body: const Center(
        child: Text('数据分析页面 - 开发中'),
      ),
    );
  }
}
