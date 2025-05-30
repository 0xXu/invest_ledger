import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../shared/widgets/responsive_layout.dart';
import '../../app/routes.dart';

class MainLayout extends ConsumerWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveLayout(
      mobile: _MobileLayout(child: child),
      desktop: _DesktopLayout(child: child),
    );
  }
}

class _DesktopLayout extends ConsumerWidget {
  final Widget child;

  const _DesktopLayout({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationProvider);

    return Scaffold(
      body: Row(
        children: [
          // 侧边导航栏
          NavigationRail(
            selectedIndex: currentIndex,
            onDestinationSelected: (index) {
              ref.read(navigationProvider.notifier).setIndex(index);
              _navigateToPage(context, index);
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(LucideIcons.layoutDashboard),
                selectedIcon: Icon(LucideIcons.layoutDashboard),
                label: Text('概览'),
              ),
              NavigationRailDestination(
                icon: Icon(LucideIcons.receipt),
                selectedIcon: Icon(LucideIcons.receipt),
                label: Text('交易'),
              ),
              NavigationRailDestination(
                icon: Icon(LucideIcons.users),
                selectedIcon: Icon(LucideIcons.users),
                label: Text('共享投资'),
              ),
              NavigationRailDestination(
                icon: Icon(LucideIcons.barChart3),
                selectedIcon: Icon(LucideIcons.barChart3),
                label: Text('分析'),
              ),
              NavigationRailDestination(
                icon: Icon(LucideIcons.settings),
                selectedIcon: Icon(LucideIcons.settings),
                label: Text('设置'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // 主内容区
          Expanded(child: child),
        ],
      ),
    );
  }

  void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/dashboard');
        break;
      case 1:
        context.go('/transactions');
        break;
      case 2:
        context.go('/shared-investment');
        break;
      case 3:
        context.go('/analytics');
        break;
      case 4:
        context.go('/settings');
        break;
    }
  }
}

class _MobileLayout extends ConsumerWidget {
  final Widget child;

  const _MobileLayout({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationProvider);

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          ref.read(navigationProvider.notifier).setIndex(index);
          _navigateToPage(context, index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(LucideIcons.layoutDashboard),
            selectedIcon: Icon(LucideIcons.layoutDashboard),
            label: '概览',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.receipt),
            selectedIcon: Icon(LucideIcons.receipt),
            label: '交易',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.users),
            selectedIcon: Icon(LucideIcons.users),
            label: '共享投资',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.barChart3),
            selectedIcon: Icon(LucideIcons.barChart3),
            label: '分析',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.settings),
            selectedIcon: Icon(LucideIcons.settings),
            label: '设置',
          ),
        ],
      ),
    );
  }

  void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/dashboard');
        break;
      case 1:
        context.go('/transactions');
        break;
      case 2:
        context.go('/shared-investment');
        break;
      case 3:
        context.go('/analytics');
        break;
      case 4:
        context.go('/settings');
        break;
    }
  }
}
