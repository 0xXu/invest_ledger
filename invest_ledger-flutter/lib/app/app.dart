import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme.dart';
import 'routes.dart';
import '../presentation/providers/theme_provider.dart';
import '../presentation/widgets/global_loading_overlay.dart';

class InvestLedgerApp extends ConsumerWidget {
  const InvestLedgerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return GlobalLoadingOverlay(
      child: MaterialApp.router(
        title: 'InvestLedger',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeMode,
        routerConfig: ref.watch(routerProvider),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
