import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/services/import_export_service.dart';
import '../../data/models/import_result.dart';
import '../../data/repositories/transaction_repository.dart';
import '../../data/repositories/user_repository.dart';
import '../../data/repositories/shared_investment_repository.dart';
import '../../data/repositories/investment_goal_repository.dart';
import 'transaction_provider.dart';
import 'user_provider.dart';
import 'shared_investment_provider.dart';
import 'investment_goal_provider.dart';

part 'import_export_provider.g.dart';

// Import/Export service provider
@riverpod
ImportExportService importExportService(ImportExportServiceRef ref) {
  return ImportExportService(
    transactionRepository: ref.watch(transactionRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
    sharedInvestmentRepository: ref.watch(sharedInvestmentRepositoryProvider),
    investmentGoalRepository: ref.watch(investmentGoalRepositoryProvider),
  );
}

// Import/Export notifier
@riverpod
class ImportExportNotifier extends _$ImportExportNotifier {
  @override
  AsyncValue<void> build() {
    return const AsyncValue.data(null);
  }

  /// 导出交易记录为CSV
  Future<String?> exportTransactionsToCSV() async {
    final user = ref.read(userProvider);
    if (user == null) {
      throw Exception('用户未登录');
    }

    state = const AsyncValue.loading();

    try {
      final service = ref.read(importExportServiceProvider);
      final result = await service.exportTransactionsToCSV(user.id);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// 从CSV导入交易记录
  Future<int> importTransactionsFromCSV() async {
    final user = ref.read(userProvider);
    if (user == null) {
      throw Exception('用户未登录');
    }

    state = const AsyncValue.loading();

    try {
      final service = ref.read(importExportServiceProvider);
      final result = await service.importTransactionsFromCSV(user.id);

      // 刷新交易记录
      ref.invalidate(transactionNotifierProvider);

      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// 从TXT导入交易记录
  Future<TxtImportResult> importTransactionsFromTXT() async {
    final user = ref.read(userProvider);
    if (user == null) {
      throw Exception('用户未登录');
    }

    state = const AsyncValue.loading();

    try {
      final service = ref.read(importExportServiceProvider);
      final result = await service.importTransactionsFromTXT(user.id);

      // 刷新交易记录
      ref.invalidate(transactionNotifierProvider);

      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// 导出完整数据备份
  Future<String?> exportFullBackup() async {
    final user = ref.read(userProvider);
    if (user == null) {
      throw Exception('用户未登录');
    }

    state = const AsyncValue.loading();

    try {
      final service = ref.read(importExportServiceProvider);
      final result = await service.exportFullBackup(user.id);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// 从备份文件恢复数据
  Future<Map<String, int>> importFullBackup() async {
    state = const AsyncValue.loading();

    try {
      final service = ref.read(importExportServiceProvider);
      final result = await service.importFullBackup();

      // 刷新所有数据
      ref.invalidate(transactionNotifierProvider);
      ref.invalidate(sharedInvestmentNotifierProvider);
      ref.invalidate(investmentGoalNotifierProvider);

      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// 执行自动备份
  Future<String> autoBackup() async {
    final user = ref.read(userProvider);
    if (user == null) {
      throw Exception('用户未登录');
    }

    try {
      final service = ref.read(importExportServiceProvider);
      return await service.autoBackup(user.id);
    } catch (e) {
      rethrow;
    }
  }

  /// 获取应用数据目录
  Future<String> getAppDataDirectory() async {
    final service = ref.read(importExportServiceProvider);
    return await service.getAppDataDirectory();
  }
}

// Auto backup provider (for scheduled backups)
@riverpod
class AutoBackupNotifier extends _$AutoBackupNotifier {
  @override
  DateTime? build() {
    return null; // Last backup time
  }

  /// 检查是否需要自动备份
  bool shouldAutoBackup() {
    final lastBackup = state;
    if (lastBackup == null) return true;

    final now = DateTime.now();
    final daysSinceLastBackup = now.difference(lastBackup).inDays;

    return daysSinceLastBackup >= 7; // 每周自动备份一次
  }

  /// 执行自动备份并更新时间
  Future<String?> performAutoBackup() async {
    if (!shouldAutoBackup()) return null;

    try {
      final importExportNotifier = ref.read(importExportNotifierProvider.notifier);
      final backupPath = await importExportNotifier.autoBackup();

      state = DateTime.now();
      return backupPath;
    } catch (e) {
      // 自动备份失败不影响应用正常使用
      return null;
    }
  }

  /// 手动设置最后备份时间
  void setLastBackupTime(DateTime time) {
    state = time;
  }
}
