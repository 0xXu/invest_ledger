import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../providers/theme_provider.dart';
import '../../providers/user_provider.dart';
import '../dev/dev_tools_page.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 用户信息卡片
          if (user != null)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '用户信息',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(user.name[0].toUpperCase()),
                      ),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          ref.read(userProvider.notifier).logout();
                          context.go('/');
                        },
                        icon: const Icon(Icons.logout),
                        label: const Text('退出登录'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '外观设置',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text('主题模式'),
                    subtitle: Text(_getThemeModeText(themeMode)),
                    trailing: DropdownButton<ThemeMode>(
                      value: themeMode,
                      onChanged: (ThemeMode? newMode) {
                        if (newMode != null) {
                          ref.read(themeProvider.notifier).setThemeMode(newMode);
                        }
                      },
                      items: const [
                        DropdownMenuItem(
                          value: ThemeMode.system,
                          child: Text('跟随系统'),
                        ),
                        DropdownMenuItem(
                          value: ThemeMode.light,
                          child: Text('浅色模式'),
                        ),
                        DropdownMenuItem(
                          value: ThemeMode.dark,
                          child: Text('深色模式'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // 开发工具 (仅在调试模式下显示)
          if (kDebugMode)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '开发工具',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(Icons.developer_mode),
                      title: const Text('开发工具'),
                      subtitle: const Text('示例数据和调试功能'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DevToolsPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          if (kDebugMode) const SizedBox(height: 16),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '关于',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  const ListTile(
                    title: Text('版本'),
                    subtitle: Text('1.0.0'),
                  ),
                  const ListTile(
                    title: Text('开发者'),
                    subtitle: Text('InvestLedger Team'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getThemeModeText(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return '跟随系统';
      case ThemeMode.light:
        return '浅色模式';
      case ThemeMode.dark:
        return '深色模式';
    }
  }
}
