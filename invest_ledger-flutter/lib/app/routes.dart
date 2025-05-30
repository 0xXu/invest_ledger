import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/pages/dashboard/dashboard_page.dart';
import '../presentation/pages/transactions/transactions_page.dart';
import '../presentation/pages/transactions/add_transaction_page.dart';
import '../presentation/pages/shared_investment/shared_investment_page.dart';
import '../presentation/pages/analytics/analytics_page.dart';
import '../presentation/pages/settings/settings_page.dart';
import '../presentation/pages/auth/user_selection_page.dart';
import '../presentation/widgets/main_layout.dart';


final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      // 简化重定向逻辑，避免在provider重建时出现问题
      return null; // 不进行自动重定向
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
