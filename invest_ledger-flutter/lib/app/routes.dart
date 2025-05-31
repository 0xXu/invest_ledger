import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/pages/dashboard/dashboard_page.dart';
import '../presentation/pages/transactions/transactions_page.dart';
import '../presentation/pages/transactions/add_transaction_page.dart';
import '../presentation/pages/transactions/transaction_detail_page.dart';
import '../presentation/pages/transactions/edit_transaction_page.dart';
import '../presentation/pages/transactions/search_transactions_page.dart';
import '../presentation/pages/shared_investment/shared_investment_page.dart';
import '../presentation/pages/shared_investment/create_shared_investment_page.dart';
import '../presentation/pages/shared_investment/shared_investment_detail_page.dart';
import '../presentation/pages/shared_investment/edit_shared_investment_page.dart';
import '../presentation/pages/analytics/analytics_page.dart';
import '../presentation/pages/settings/settings_page.dart';
import '../presentation/pages/import_export/import_export_page.dart';
import '../presentation/pages/auth/user_selection_page.dart';
import '../presentation/pages/auth/splash_page.dart';
import '../presentation/pages/test/refresh_button_test_page.dart';
import '../presentation/pages/dev/dev_tools_page.dart';
import '../presentation/pages/ai_assistant/ai_assistant_page.dart';
import '../presentation/pages/ai_assistant/stock_analysis_page.dart';
import '../presentation/pages/ai_assistant/ai_suggestions_page.dart';
import '../presentation/pages/ai_assistant/suggestion_detail_page.dart';
import '../presentation/widgets/main_layout.dart';


final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/user-selection',
        name: 'user-selection',
        builder: (context, state) => const UserSelectionPage(),
      ),
      ShellRoute(
        builder: (context, state, child) => MainLayout(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            name: 'dashboard',
            builder: (context, state) => const DashboardPage(),
          ),
          GoRoute(
            path: '/transactions',
            name: 'transactions',
            builder: (context, state) => const TransactionsPage(),
            routes: [
              GoRoute(
                path: 'add',
                name: 'add-transaction',
                builder: (context, state) => const AddTransactionPage(),
              ),
              GoRoute(
                path: 'search',
                name: 'search-transactions',
                builder: (context, state) => const SearchTransactionsPage(),
              ),
              GoRoute(
                path: ':id',
                name: 'transaction-detail',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return TransactionDetailPage(transactionId: id);
                },
              ),
              GoRoute(
                path: 'edit/:id',
                name: 'edit-transaction',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return EditTransactionPage(transactionId: id);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/shared-investment',
            name: 'shared-investment',
            builder: (context, state) => const SharedInvestmentPage(),
            routes: [
              GoRoute(
                path: 'create',
                name: 'create-shared-investment',
                builder: (context, state) => const CreateSharedInvestmentPage(),
              ),
              GoRoute(
                path: ':id',
                name: 'shared-investment-detail',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return SharedInvestmentDetailPage(sharedInvestmentId: id);
                },
                routes: [
                  GoRoute(
                    path: 'edit',
                    name: 'edit-shared-investment',
                    builder: (context, state) {
                      final id = state.pathParameters['id']!;
                      return EditSharedInvestmentPage(sharedInvestmentId: id);
                    },
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '/analytics',
            name: 'analytics',
            builder: (context, state) => const AnalyticsPage(),
          ),
          GoRoute(
            path: '/settings',
            name: 'settings',
            builder: (context, state) => const SettingsPage(),
          ),
          GoRoute(
            path: '/import-export',
            name: 'import-export',
            builder: (context, state) => const ImportExportPage(),
          ),
          GoRoute(
            path: '/test/refresh-button',
            name: 'refresh-button-test',
            builder: (context, state) => const RefreshButtonTestPage(),
          ),
          GoRoute(
            path: '/dev-tools',
            name: 'dev-tools',
            builder: (context, state) => const DevToolsPage(),
          ),
        ],
      ),
    ],
  );
});

// 导航状态管理
final navigationProvider = StateNotifierProvider<NavigationNotifier, int>((ref) {
  return NavigationNotifier();
});

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier() : super(0);

  void setIndex(int index) {
    state = index;
  }
}
