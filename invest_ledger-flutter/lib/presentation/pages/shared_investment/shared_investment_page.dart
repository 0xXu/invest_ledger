import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SharedInvestmentPage extends ConsumerWidget {
  const SharedInvestmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('共享投资'),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: 搜索
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Center(
        child: Text('共享投资页面 - 开发中'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: 创建共享投资
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
