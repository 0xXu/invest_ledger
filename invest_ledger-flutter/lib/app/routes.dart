import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/providers/user_provider.dart';
import '../presentation/pages/dashboard/dashboard_page.dart';
import '../presentation/pages/transactions/transactions_page.dart';
import '../presentation/pages/transactions/add_transaction_page.dart';
import '../presentation/pages/transactions/transaction_detail_page.dart';
import '../presentation/pages/transactions/edit_transaction_page.dart';
import '../presentation/pages/transactions/search_transactions_page.dart';
import '../presentation/pages/shared_investment/shared_investment_page.dart';
import '../presentation/pages/analytics/analytics_page.dart';
import '../presentation/pages/settings/settings_page.dart';
import '../presentation/pages/auth/user_selection_page.dart';
import '../presentation/widgets/main_layout.dart';


final routerProvider = Provider<GoRouter>((ref) {
  // 监听用户状态变化，当用户登录/登出时刷新路由
  ref.watch(userProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final user = ref.read(userProvider);
      final isAuthRoute = state.matchedLocation == '/';

      // 如果用户未登录且不在登录页面，重定向到登录页面
      if (user == null && !isAuthRoute) {
        return '/';
      }

      // 如果用户已登录且在登录页面，重定向到仪表盘
      if (user != null && isAuthRoute) {
        return '/dashboard';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: 'auth',
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
