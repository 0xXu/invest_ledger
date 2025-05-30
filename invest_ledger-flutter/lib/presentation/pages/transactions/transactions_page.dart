import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/transaction.dart';

import '../../providers/transaction_provider.dart';
import '../../widgets/stock_investment_card.dart';

class TransactionsPage extends ConsumerWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsAsync = ref.watch(transactionNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('交易记录'),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: 搜索功能
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('搜索功能即将推出')),
              );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // TODO: 筛选功能
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('筛选功能即将推出')),
              );
            },
            icon: const Icon(Icons.filter_list),
          ),
          IconButton(
            onPressed: () {
              ref.invalidate(transactionNotifierProvider);
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: transactionsAsync.when(
        data: (transactions) => _TransactionsList(transactions: transactions),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('加载失败: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.invalidate(transactionNotifierProvider),
                child: const Text('重试'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/transactions/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;

  const _TransactionsList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.receipt_long, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              '暂无交易记录',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              '点击右下角的 + 按钮添加第一笔交易',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: StockInvestmentCard(
            transaction: transaction,
            onTap: () {
              // TODO: 导航到交易详情页面
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('查看交易详情: ${transaction.stockName}')),
              );
            },
            onEdit: () {
              // TODO: 导航到编辑交易页面
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('编辑交易: ${transaction.stockName}')),
              );
            },
            onDelete: () {
              _showDeleteDialog(context, transaction);
            },
          ),
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, Transaction transaction) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('删除交易'),
        content: Text('确定要删除这笔交易吗？\n\n${transaction.stockName} (${transaction.stockCode})'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              // TODO: 实现删除功能
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('删除功能即将推出')),
              );
            },
            child: const Text('删除'),
          ),
        ],
      ),
    );
  }
}
