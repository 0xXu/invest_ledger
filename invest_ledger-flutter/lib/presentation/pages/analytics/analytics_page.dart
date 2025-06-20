import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../data/services/report_export_service.dart';
import '../../providers/transaction_provider.dart';
import '../../providers/color_theme_provider.dart';
import '../../widgets/charts/profit_loss_chart.dart';
import '../../widgets/charts/stock_distribution_chart.dart';
import '../../widgets/charts/improved_monthly_trend_chart.dart';
import '../../widgets/charts/stock_performance_chart.dart';
import '../../widgets/refresh_button.dart';

class AnalyticsPage extends ConsumerStatefulWidget {
  const AnalyticsPage({super.key});

  @override
  ConsumerState<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends ConsumerState<AnalyticsPage>
    with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true; // 保持页面状态，避免重建

  /// 处理导出操作
  Future<void> _handleExport(BuildContext context, WidgetRef ref, String exportType) async {
    try {
      final transactionsAsync = ref.read(transactionNotifierProvider);
      final statsAsync = ref.read(transactionStatsProvider);

      // 检查数据是否已加载
      if (!transactionsAsync.hasValue || !statsAsync.hasValue) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Row(
                children: [
                  Icon(LucideIcons.alertCircle, color: Colors.white),
                  SizedBox(width: 8),
                  Text('数据正在加载中，请稍后再试'),
                ],
              ),
              backgroundColor: Colors.orange,
            ),
          );
        }
        return;
      }

      final transactions = transactionsAsync.value!;
      final stats = statsAsync.value!;

      if (transactions.isEmpty) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Row(
                children: [
                  Icon(LucideIcons.alertCircle, color: Colors.white),
                  SizedBox(width: 8),
                  Text('暂无数据可导出'),
                ],
              ),
              backgroundColor: Colors.orange,
            ),
          );
        }
        return;
      }

      String? filePath;
      if (exportType == 'pdf') {
        filePath = await ReportExportService.exportAnalysisReportToPDF(
          transactions: transactions,
          stats: stats,
        );
      } else if (exportType == 'csv') {
        filePath = await ReportExportService.exportAnalysisReportToCSV(
          transactions: transactions,
          stats: stats,
        );
      }

      if (filePath != null && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(LucideIcons.checkCircle, color: Colors.white),
                const SizedBox(width: 8),
                Expanded(
                  child: Text('报告已导出到:\n$filePath'),
                ),
              ],
            ),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(LucideIcons.alertCircle, color: Colors.white),
                const SizedBox(width: 8),
                Expanded(child: Text('导出失败: $e')),
              ],
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用，用于保活机制
    final transactionsAsync = ref.watch(transactionNotifierProvider);
    final statsAsync = ref.watch(transactionStatsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('数据分析'),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(LucideIcons.download),
            tooltip: '导出报告',
            onSelected: (value) => _handleExport(context, ref, value),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'pdf',
                child: Row(
                  children: [
                    Icon(LucideIcons.fileText),
                    SizedBox(width: 8),
                    Text('导出PDF报告'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'csv',
                child: Row(
                  children: [
                    Icon(LucideIcons.fileSpreadsheet),
                    SizedBox(width: 8),
                    Text('导出CSV报告'),
                  ],
                ),
              ),
            ],
          ),
          RefreshButton.icon(
            onRefresh: () async {
              ref.invalidate(transactionNotifierProvider);
              ref.invalidate(transactionStatsProvider);
            },
            loadingMessage: '正在刷新分析数据...',
            tooltip: '刷新数据',
          ),
        ],
      ),
      body: transactionsAsync.when(
        data: (transactions) => _AnalyticsContent(
          transactions: transactions,
          statsAsync: statsAsync,
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(LucideIcons.alertCircle, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('加载失败: $error'),
              const SizedBox(height: 16),
              RefreshButton.filled(
                onRefresh: () async {
                  ref.invalidate(transactionNotifierProvider);
                  ref.invalidate(transactionStatsProvider);
                },
                label: '重试',
                loadingMessage: '正在重新加载...',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AnalyticsContent extends StatelessWidget {
  final List<dynamic> transactions;
  final AsyncValue<Map<String, dynamic>> statsAsync;

  const _AnalyticsContent({
    required this.transactions,
    required this.statsAsync,
  });

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              LucideIcons.barChart3,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              '暂无数据可分析',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              '添加一些交易记录后再来查看分析',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 统计概览
          statsAsync.when(
            data: (stats) => _StatsOverview(stats: stats),
            loading: () => const Card(
              child: SizedBox(
                height: 120,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
            error: (error, stack) => Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('统计数据加载失败: $error'),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // 月度盈亏趋势图
          RepaintBoundary(
            child: ProfitLossChart(
              transactions: transactions.cast(),
              title: '月度盈亏趋势',
            ),
          ),
          const SizedBox(height: 16),

          // 月度趋势图
          RepaintBoundary(
            child: ImprovedMonthlyTrendChart(
              transactions: transactions.cast(),
              title: '全年月度趋势',
            ),
          ),
          const SizedBox(height: 16),

          // 股票表现排行
          RepaintBoundary(
            child: StockPerformanceChart(
              transactions: transactions.cast(),
              title: '股票表现排行（前10）',
              maxStocks: 10,
            ),
          ),
          const SizedBox(height: 16),

          // 股票投资分布图
          RepaintBoundary(
            child: StockDistributionChart(
              transactions: transactions.cast(),
              title: '股票投资分布',
            ),
          ),
        ],
      ),
    );
  }

}

class _StatsOverview extends ConsumerWidget {
  final Map<String, dynamic> stats;

  const _StatsOverview({required this.stats});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorsAsync = ref.watch(profitLossColorsProvider);

    return colorsAsync.when(
      data: (colors) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '投资概览',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _StatItem(
                      label: '总盈利',
                      value: '¥${((stats['totalProfit'] as num?)?.toDouble() ?? 0.0).toStringAsFixed(2)}',
                      color: colors.getProfitColor(),
                      icon: LucideIcons.trendingUp,
                    ),
                  ),
                  Expanded(
                    child: _StatItem(
                      label: '总亏损',
                      value: '¥${((stats['totalLoss'] as num?)?.toDouble() ?? 0.0).toStringAsFixed(2)}',
                      color: colors.getLossColor(),
                      icon: LucideIcons.trendingDown,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _StatItem(
                      label: '胜率',
                      value: '${((stats['winRate'] as num?)?.toDouble() ?? 0.0).toStringAsFixed(1)}%',
                      color: const Color(0xFF2196F3),
                      icon: LucideIcons.target,
                    ),
                  ),
                  Expanded(
                    child: _StatItem(
                      label: 'ROI',
                      value: '${((stats['roi'] as num?)?.toDouble() ?? 0.0).toStringAsFixed(2)}%',
                      color: colors.getColorByValue(((stats['roi'] as num?)?.toDouble() ?? 0.0)),
                      icon: LucideIcons.percent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      loading: () => const Card(
        child: SizedBox(
          height: 120,
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
      error: (_, __) => const Card(
        child: SizedBox(
          height: 120,
          child: Center(child: Icon(Icons.error)),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final IconData icon;

  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 8),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
