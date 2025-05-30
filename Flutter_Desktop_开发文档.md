# InvestLedger Flutter Desktop 开发文档

> **项目状态**: 开发中 🚧
> **开始时间**: 2024年
> **预计完成**: 4-6周

## 一、项目概述

### 1.1 项目信息

- **项目名称**：InvestLedger - 轻量级个人投资记账应用
- **目标平台**：Windows、macOS、Linux Desktop
- **开发语言**：Dart 3.2+
- **UI 框架**：Flutter 3.16+
- **设计系统**：Material Design 3
- **数据库**：SQLite (sqflite)
- **状态管理**：Riverpod 2.0+

### 1.2 项目特色

- 🚀 **真正的原生桌面应用**：编译为机器码，性能优秀
- 🎨 **Material Design 3**：现代化 UI 设计，支持深色/浅色主题和动态颜色
- 📱 **移动端扩展就绪**：85% 代码可直接复用到移动端
- 🔒 **多用户支持**：独立的用户数据隔离
- 📊 **股票投资专用**：专注股票投资记录和分析
- 🤝 **共享投资功能**：多人协作股票投资管理
- 💰 **CNY 专用**：简化货币处理，专注人民币投资

## 二、技术架构

### 2.1 整体架构

```
lib/
├── main.dart                    # 应用入口
├── app/                         # 应用核心配置
│   ├── app.dart                 # 主应用配置
│   ├── routes.dart              # 路由管理
│   └── theme.dart               # 主题配置
├── core/                        # 核心基础设施
│   ├── constants/               # 常量定义
│   ├── utils/                   # 工具函数
│   ├── extensions/              # 扩展方法
│   └── exceptions/              # 异常处理
├── data/                        # 数据层
│   ├── models/                  # 数据模型
│   ├── repositories/            # 数据仓库
│   ├── datasources/             # 数据源
│   └── database/                # 数据库配置
├── domain/                      # 业务逻辑层
│   ├── entities/                # 业务实体
│   ├── usecases/                # 用例
│   └── repositories/            # 仓库接口
├── presentation/                # 表现层
│   ├── pages/                   # 页面
│   ├── widgets/                 # 通用组件
│   ├── providers/               # 状态管理
│   └── utils/                   # UI 工具
└── shared/                      # 共享资源
    ├── widgets/                 # 共享组件
    └── services/                # 共享服务
```

### 2.2 核心技术栈

#### 状态管理

```yaml
dependencies:
  flutter_riverpod: ^2.4.9
  riverpod_annotation: ^2.3.3
```

#### 数据库

```yaml
dependencies:
  sqflite: ^2.3.0
  sqflite_common_ffi: ^2.3.0 # Desktop 支持
  path: ^1.8.3
```

#### UI 组件

```yaml
dependencies:
  flutter:
    sdk: flutter
  material_color_utilities: ^0.5.0 # Material 3 颜色
  dynamic_color: ^1.6.8 # 动态颜色
  flex_color_scheme: ^7.3.1 # 高级主题
```

#### 图表和可视化

```yaml
dependencies:
  fl_chart: ^0.65.0 # 图表库
  syncfusion_flutter_charts: ^23.2.7 # 高级图表
```

#### 文件处理

```yaml
dependencies:
  file_picker: ^6.1.1 # 文件选择
  csv: ^5.0.2 # CSV 处理
  excel: ^2.1.0 # Excel 处理
  pdf: ^3.10.7 # PDF 生成
```

#### 工具库

```yaml
dependencies:
  intl: ^0.18.1 # 国际化
  decimal: ^2.3.3 # 精确计算
  equatable: ^2.0.5 # 对象比较
  json_annotation: ^4.8.1 # JSON 序列化
  freezed_annotation: ^2.4.1 # 不可变类
```

## 三、数据模型设计

### 3.1 核心实体

#### 用户模型

```dart
@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    required DateTime createdAt,
    DateTime? lastLoginAt,
    @Default(UserSettings()) UserSettings settings,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserSettings with _$UserSettings {
  const factory UserSettings({
    @Default('system') String themeMode,
    @Default(true) bool enableNotifications,
    @Default(true) bool enableAutoBackup,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
```

#### 交易模型

```dart
@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    String? id,
    required String userId,
    required DateTime date,
    required String stockCode,        // 股票代码
    required String stockName,        // 股票名称
    required Decimal amount,          // 股数
    required Decimal unitPrice,       // 单价
    required Decimal profitLoss,      // 盈亏 (CNY)
    @Default([]) List<String> tags,
    String? notes,
    String? sharedInvestmentId,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
```

#### 共享投资模型

```dart
@freezed
class SharedInvestment with _$SharedInvestment {
  const factory SharedInvestment({
    required String id,
    required String name,
    required String stockCode,       // 股票代码
    required String stockName,       // 股票名称
    required Decimal totalAmount,    // 总投资金额 (CNY)
    required Decimal totalShares,    // 总股数
    required Decimal initialPrice,   // 初始价格 (CNY)
    Decimal? currentPrice,           // 当前价格 (CNY)
    Decimal? sellAmount,             // 卖出总金额 (CNY)
    required DateTime createdDate,
    @Default(SharedInvestmentStatus.active) SharedInvestmentStatus status,
    String? notes,
    @Default([]) List<SharedInvestmentParticipant> participants,
  }) = _SharedInvestment;

  factory SharedInvestment.fromJson(Map<String, dynamic> json) =>
      _$SharedInvestmentFromJson(json);
}

@freezed
class SharedInvestmentParticipant with _$SharedInvestmentParticipant {
  const factory SharedInvestmentParticipant({
    required String id,
    required String sharedInvestmentId,
    required String userId,
    required String userName,
    required Decimal investmentAmount,
    required Decimal shares,
    @Default(Decimal.zero) Decimal profitLoss,
    String? transactionId,
  }) = _SharedInvestmentParticipant;

  factory SharedInvestmentParticipant.fromJson(Map<String, dynamic> json) =>
      _$SharedInvestmentParticipantFromJson(json);
}

enum SharedInvestmentStatus {
  active,
  completed,
  cancelled,
}
```

### 3.2 数据库设计

#### 数据库初始化

```dart
class DatabaseHelper {
  static const String _databaseName = 'invest_ledger.db';
  static const int _databaseVersion = 1;

  static Database? _database;

  static Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);

    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  static Future<void> _onCreate(Database db, int version) async {
    await _createTables(db);
  }

  static Future<void> _createTables(Database db) async {
    // 用户表
    await db.execute('''
      CREATE TABLE users (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE,
        created_at TEXT NOT NULL,
        last_login_at TEXT,
        settings TEXT NOT NULL
      )
    ''');

    // 交易表
    await db.execute('''
      CREATE TABLE transactions (
        id TEXT PRIMARY KEY,
        user_id TEXT NOT NULL,
        date TEXT NOT NULL,
        stock_code TEXT NOT NULL,
        stock_name TEXT NOT NULL,
        amount TEXT NOT NULL,
        unit_price TEXT NOT NULL,
        profit_loss TEXT NOT NULL,
        tags TEXT NOT NULL,
        notes TEXT,
        shared_investment_id TEXT,
        created_at TEXT NOT NULL,
        updated_at TEXT,
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
        FOREIGN KEY (shared_investment_id) REFERENCES shared_investments (id)
      )
    ''');

    // 共享投资表
    await db.execute('''
      CREATE TABLE shared_investments (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        stock_code TEXT NOT NULL,
        stock_name TEXT NOT NULL,
        total_amount TEXT NOT NULL,
        total_shares TEXT NOT NULL,
        initial_price TEXT NOT NULL,
        current_price TEXT,
        sell_amount TEXT,
        created_date TEXT NOT NULL,
        status TEXT NOT NULL,
        notes TEXT
      )
    ''');

    // 共享投资参与者表
    await db.execute('''
      CREATE TABLE shared_investment_participants (
        id TEXT PRIMARY KEY,
        shared_investment_id TEXT NOT NULL,
        user_id TEXT NOT NULL,
        user_name TEXT NOT NULL,
        investment_amount TEXT NOT NULL,
        shares TEXT NOT NULL,
        profit_loss TEXT NOT NULL,
        transaction_id TEXT,
        FOREIGN KEY (shared_investment_id) REFERENCES shared_investments (id) ON DELETE CASCADE,
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
        FOREIGN KEY (transaction_id) REFERENCES transactions (id) ON DELETE SET NULL
      )
    ''');

    // 标签表
    await db.execute('''
      CREATE TABLE tags (
        id TEXT PRIMARY KEY,
        user_id TEXT NOT NULL,
        name TEXT NOT NULL,
        color TEXT NOT NULL,
        description TEXT,
        created_at TEXT NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
        UNIQUE(user_id, name)
      )
    ''');

    // 创建索引
    await db.execute('CREATE INDEX idx_transactions_user_id ON transactions(user_id)');
    await db.execute('CREATE INDEX idx_transactions_date ON transactions(date)');
    await db.execute('CREATE INDEX idx_transactions_stock_code ON transactions(stock_code)');
  }
}
```

## 四、状态管理架构

### 4.1 Riverpod 提供者设计

#### 用户管理

```dart
@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  User? build() => null;

  Future<void> login(String userId) async {
    final userRepository = ref.read(userRepositoryProvider);
    final user = await userRepository.getUserById(userId);
    state = user;
  }

  Future<void> logout() async {
    state = null;
  }

  Future<void> updateSettings(UserSettings settings) async {
    if (state == null) return;

    final userRepository = ref.read(userRepositoryProvider);
    final updatedUser = state!.copyWith(settings: settings);
    await userRepository.updateUser(updatedUser);
    state = updatedUser;
  }
}

final userProvider = userNotifierProvider;
```

#### 交易管理

````dart
@riverpod
class TransactionNotifier extends _$TransactionNotifier {
  @override
  Future<List<Transaction>> build() async {
    final user = ref.watch(userProvider);
    if (user == null) return [];

    final repository = ref.read(transactionRepositoryProvider);
    return await repository.getTransactionsByUserId(user.id);
  }

  Future<void> addTransaction(Transaction transaction) async {
    final repository = ref.read(transactionRepositoryProvider);
    await repository.addTransaction(transaction);
    ref.invalidateSelf();
  }

  Future<void> updateTransaction(Transaction transaction) async {
    final repository = ref.read(transactionRepositoryProvider);
    await repository.updateTransaction(transaction);
    ref.invalidateSelf();
  }

  Future<void> deleteTransaction(String transactionId) async {
    final repository = ref.read(transactionRepositoryProvider);
    await repository.deleteTransaction(transactionId);
    ref.invalidateSelf();
  }
}

final transactionProvider = transactionNotifierProvider;

#### 共享投资管理
```dart
@riverpod
class SharedInvestmentNotifier extends _$SharedInvestmentNotifier {
  @override
  Future<List<SharedInvestment>> build() async {
    final repository = ref.read(sharedInvestmentRepositoryProvider);
    return await repository.getAllSharedInvestments();
  }

  Future<void> createSharedInvestment({
    required String name,
    required String assetType,
    required String projectName,
    required List<SharedInvestmentParticipant> participants,
    required Decimal sellAmount,
  }) async {
    final repository = ref.read(sharedInvestmentRepositoryProvider);

    // 计算总投资和总持仓
    final totalAmount = participants.fold(
      Decimal.zero,
      (sum, p) => sum + p.investmentAmount,
    );
    final totalShares = participants.fold(
      Decimal.zero,
      (sum, p) => sum + p.shares,
    );

    final sharedInvestment = SharedInvestment(
      id: const Uuid().v4(),
      name: name,
      assetType: assetType,
      projectName: projectName,
      totalAmount: totalAmount,
      totalShares: totalShares,
      initialPrice: totalAmount / totalShares,
      sellAmount: sellAmount,
      createdDate: DateTime.now(),
      participants: participants,
    );

    await repository.createSharedInvestment(sharedInvestment);
    ref.invalidateSelf();
  }
}

final sharedInvestmentProvider = sharedInvestmentNotifierProvider;
````

### 4.2 主题管理

```dart
@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeMode build() {
    final user = ref.watch(userProvider);
    if (user?.settings.themeMode == 'dark') return ThemeMode.dark;
    if (user?.settings.themeMode == 'light') return ThemeMode.light;
    return ThemeMode.system;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final user = ref.read(userProvider);
    if (user == null) return;

    final themeString = switch (mode) {
      ThemeMode.dark => 'dark',
      ThemeMode.light => 'light',
      ThemeMode.system => 'system',
    };

    final updatedSettings = user.settings.copyWith(themeMode: themeString);
    await ref.read(userProvider.notifier).updateSettings(updatedSettings);
    state = mode;
  }
}

final themeProvider = themeNotifierProvider;
```

## 五、Material Design 3 主题系统

### 5.1 主题配置

```dart
class AppTheme {
  // 自定义颜色
  static const Color profitColor = Color(0xFF4CAF50);
  static const Color lossColor = Color(0xFFF44336);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2196F3),
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 1,
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // 自定义扩展颜色
    extensions: [
      CustomColors(
        profit: profitColor,
        loss: lossColor,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2196F3),
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 1,
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // 自定义扩展颜色
    extensions: [
      CustomColors(
        profit: profitColor,
        loss: lossColor,
      ),
    ],
  );
}

// 自定义颜色扩展
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  final Color profit;
  final Color loss;

  const CustomColors({
    required this.profit,
    required this.loss,
  });

  @override
  CustomColors copyWith({
    Color? profit,
    Color? loss,
  }) {
    return CustomColors(
      profit: profit ?? this.profit,
      loss: loss ?? this.loss,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      profit: Color.lerp(profit, other.profit, t)!,
      loss: Color.lerp(loss, other.loss, t)!,
    );
  }
}
```

### 5.2 响应式布局

```dart
class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 800) {
          return tablet ?? desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}

// 断点常量
class Breakpoints {
  static const double mobile = 600;
  static const double tablet = 1024;
  static const double desktop = 1200;
}
```

### 5.3 核心组件

#### 股票投资卡片组件

```dart
class StockInvestmentCard extends ConsumerWidget {
  final Transaction transaction;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const StockInvestmentCard({
    super.key,
    required this.transaction,
    this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final customColors = theme.extension<CustomColors>()!;

    final isProfit = transaction.profitLoss > Decimal.zero;
    final profitColor = isProfit ? customColors.profit : customColors.loss;

    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 标题行
              Row(
                children: [
                  // 股票图标
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.trending_up,
                      color: colorScheme.onPrimaryContainer,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // 股票信息
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${transaction.stockName} (${transaction.stockCode})',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${transaction.amount.toStringAsFixed(0)}股 × ¥${transaction.unitPrice.toStringAsFixed(2)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 盈亏金额
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${isProfit ? '+' : ''}¥${transaction.profitLoss.toStringAsFixed(2)}',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: profitColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat('MM/dd').format(transaction.date),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // 标签
              if (transaction.tags.isNotEmpty) ...[
                const SizedBox(height: 12),
                Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  children: transaction.tags.map((tag) => Chip(
                    label: Text(tag),
                    labelStyle: theme.textTheme.bodySmall,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  )).toList(),
                ),
              ],

              // 操作按钮
              if (onEdit != null || onDelete != null) ...[
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (onEdit != null)
                      IconButton(
                        onPressed: onEdit,
                        icon: const Icon(Icons.edit),
                        iconSize: 20,
                      ),
                    if (onDelete != null)
                      IconButton(
                        onPressed: onDelete,
                        icon: const Icon(Icons.delete),
                        iconSize: 20,
                      ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final String value;

  const _InfoChip({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          Text(
            value,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
```

## 六、页面结构设计

### 6.1 主应用结构

```dart
class InvestLedgerApp extends ConsumerWidget {
  const InvestLedgerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp.router(
      title: 'InvestLedger',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: ref.watch(routerProvider),
      debugShowCheckedModeBanner: false,
    );
  }
}
```

### 6.2 主页面布局

```dart
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
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(Icons.dashboard),
                label: Text('概览'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.list_outlined),
                selectedIcon: Icon(Icons.list),
                label: Text('交易'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people_outlined),
                selectedIcon: Icon(Icons.people),
                label: Text('共享投资'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.analytics_outlined),
                selectedIcon: Icon(Icons.analytics),
                label: Text('分析'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings),
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
}
```

### 6.3 仪表盘页面

```dart
class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final transactionsAsync = ref.watch(transactionProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('投资概览 - ${user?.name ?? ''}'),
        actions: [
          IconButton(
            onPressed: () => ref.refresh(transactionProvider),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: transactionsAsync.when(
        data: (transactions) => _DashboardContent(transactions: transactions),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('加载失败: $error'),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/transactions/add'),
        icon: const Icon(Icons.add),
        label: const Text('添加交易'),
      ),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  final List<Transaction> transactions;

  const _DashboardContent({required this.transactions});

  @override
  Widget build(BuildContext context) {
    final totalProfit = transactions.fold(
      Decimal.zero,
      (sum, t) => sum + t.profitLoss,
    );

    final totalInvestment = transactions.fold(
      Decimal.zero,
      (sum, t) => sum + (t.amount * t.unitPrice),
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 概览卡片
          Row(
            children: [
              Expanded(
                child: _SummaryCard(
                  title: '总投资',
                  value: totalInvestment.toStringAsFixed(2),
                  icon: Icons.account_balance_wallet,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _SummaryCard(
                  title: '总盈亏',
                  value: '${totalProfit >= Decimal.zero ? '+' : ''}${totalProfit.toStringAsFixed(2)}',
                  icon: totalProfit >= Decimal.zero ? Icons.trending_up : Icons.trending_down,
                  color: totalProfit >= Decimal.zero ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // 最近交易
          Text(
            '最近交易',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),

          if (transactions.isEmpty)
            const Center(
              child: Text('暂无交易记录'),
            )
          else
            ...transactions.take(5).map((transaction) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: InvestmentCard(
                transaction: transaction,
                onTap: () => context.push('/transactions/${transaction.id}'),
              ),
            )),
        ],
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const _SummaryCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: theme.textTheme.headlineMedium?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## 七、开发流程与最佳实践

### 7.1 项目初始化步骤

#### 1. 创建 Flutter 项目

```bash
# 创建新项目
flutter create invest_ledger --platforms=windows,macos,linux

# 进入项目目录
cd invest_ledger

# 启用桌面支持
flutter config --enable-windows-desktop
flutter config --enable-macos-desktop
flutter config --enable-linux-desktop
```

#### 2. 配置 pubspec.yaml

```yaml
name: invest_ledger
description: 轻量级个人投资记账应用
version: 1.0.0+1

environment:
  sdk: ">=3.2.0 <4.0.0"
  flutter: ">=3.16.0"

dependencies:
  flutter:
    sdk: flutter

  # 状态管理
  flutter_riverpod: ^2.4.9
  riverpod_annotation: ^2.3.3

  # 数据库
  sqflite: ^2.3.0
  sqflite_common_ffi: ^2.3.0
  path: ^1.8.3

  # UI 组件
  material_color_utilities: ^0.5.0
  dynamic_color: ^1.6.8
  flex_color_scheme: ^7.3.1

  # 路由
  go_router: ^12.1.3

  # 图表
  fl_chart: ^0.65.0

  # 文件处理
  file_picker: ^6.1.1
  csv: ^5.0.2
  excel: ^2.1.0
  pdf: ^3.10.7

  # 工具库
  intl: ^0.18.1
  decimal: ^2.3.3
  equatable: ^2.0.5
  json_annotation: ^4.8.1
  freezed_annotation: ^2.4.1
  uuid: ^4.2.1

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0

  # 代码生成
  build_runner: ^2.4.7
  json_serializable: ^6.7.1
  freezed: ^2.4.6
  riverpod_generator: ^2.3.9

flutter:
  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
```

#### 3. 代码生成配置

```yaml
# build.yaml
targets:
  $default:
    builders:
      riverpod_generator:
        options:
          # Riverpod 生成选项
          riverpod_generator:
            enabled: true
```

### 7.2 开发工作流

#### 1. 功能开发顺序

```
第一阶段 (1-2周)：核心基础
├── 数据模型定义
├── 数据库设计与实现
├── 基础 UI 组件
├── 用户管理
└── 基础路由

第二阶段 (2-3周)：核心功能
├── 交易记录 CRUD
├── 仪表盘页面
├── 数据统计与分析
├── 标签管理
└── 主题系统

第三阶段 (1-2周)：高级功能
├── 共享投资功能
├── 数据导入导出
├── 图表可视化
├── 搜索与筛选
└── 性能优化

第四阶段 (1周)：完善与测试
├── 错误处理
├── 单元测试
├── 集成测试
├── 性能测试
└── 打包发布
```

#### 2. 开发命令

```bash
# 代码生成
flutter packages pub run build_runner build

# 监听模式代码生成
flutter packages pub run build_runner watch

# 运行应用
flutter run -d windows
flutter run -d macos
flutter run -d linux

# 构建发布版本
flutter build windows --release
flutter build macos --release
flutter build linux --release

# 运行测试
flutter test
```

### 7.3 代码规范

#### 1. 文件命名规范

```
- 文件名使用 snake_case
- 类名使用 PascalCase
- 变量名使用 camelCase
- 常量使用 SCREAMING_SNAKE_CASE
```

#### 2. 目录结构规范

```
lib/
├── main.dart
├── app/
│   ├── app.dart
│   ├── routes.dart
│   └── theme.dart
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   └── database_constants.dart
│   ├── utils/
│   │   ├── date_utils.dart
│   │   └── number_utils.dart
│   └── extensions/
│       ├── context_extension.dart
│       └── decimal_extension.dart
├── data/
│   ├── models/
│   │   ├── user.dart
│   │   ├── transaction.dart
│   │   └── shared_investment.dart
│   ├── repositories/
│   │   ├── user_repository.dart
│   │   ├── transaction_repository.dart
│   │   └── shared_investment_repository.dart
│   └── datasources/
│       ├── local/
│       │   ├── database_helper.dart
│       │   ├── user_dao.dart
│       │   ├── transaction_dao.dart
│       │   └── shared_investment_dao.dart
│       └── remote/
├── domain/
│   ├── entities/
│   ├── usecases/
│   └── repositories/
├── presentation/
│   ├── pages/
│   │   ├── dashboard/
│   │   ├── transactions/
│   │   ├── shared_investment/
│   │   ├── analytics/
│   │   └── settings/
│   ├── widgets/
│   │   ├── common/
│   │   ├── forms/
│   │   └── charts/
│   └── providers/
│       ├── user_provider.dart
│       ├── transaction_provider.dart
│       └── theme_provider.dart
└── shared/
    ├── widgets/
    │   ├── loading_widget.dart
    │   ├── error_widget.dart
    │   └── empty_widget.dart
    └── services/
        ├── file_service.dart
        └── export_service.dart
```

## 八、测试策略

### 8.1 单元测试

```dart
// test/data/repositories/transaction_repository_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:invest_ledger/data/repositories/transaction_repository.dart';

void main() {
  group('TransactionRepository', () {
    late TransactionRepository repository;
    late MockTransactionDao mockDao;

    setUp(() {
      mockDao = MockTransactionDao();
      repository = TransactionRepository(mockDao);
    });

    test('should return transactions when dao returns data', () async {
      // Arrange
      final transactions = [
        Transaction(/* test data */),
      ];
      when(mockDao.getAllTransactions()).thenAnswer((_) async => transactions);

      // Act
      final result = await repository.getAllTransactions();

      // Assert
      expect(result, equals(transactions));
      verify(mockDao.getAllTransactions()).called(1);
    });
  });
}
```

### 8.2 集成测试

```dart
// integration_test/app_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:invest_ledger/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Integration Tests', () {
    testWidgets('should navigate through main features', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // 测试导航
      expect(find.text('投资概览'), findsOneWidget);

      // 点击交易页面
      await tester.tap(find.text('交易'));
      await tester.pumpAndSettle();

      expect(find.text('交易记录'), findsOneWidget);
    });
  });
}
```

## 九、部署与发布

### 9.1 Windows 打包

```bash
# 构建 Windows 应用
flutter build windows --release

# 生成安装包 (需要安装 Inno Setup)
iscc windows_installer.iss
```

### 9.2 macOS 打包

```bash
# 构建 macOS 应用
flutter build macos --release

# 创建 DMG 文件
create-dmg build/macos/Build/Products/Release/InvestLedger.app
```

### 9.3 Linux 打包

```bash
# 构建 Linux 应用
flutter build linux --release

# 创建 AppImage
appimagetool build/linux/x64/release/bundle/
```

## 十、移动端扩展计划

### 10.1 移动端适配要点

- 导航结构调整（底部导航栏）
- 触摸交互优化
- 屏幕尺寸适配
- 移动端特有功能（推送通知、生物识别）

### 10.2 代码复用策略

- 业务逻辑层 100% 复用
- 数据层 100% 复用
- UI 组件 80% 复用
- 页面布局 60% 复用

## 十一、项目特色总结

### 11.1 简化设计理念

本项目采用**极简化设计**，专注核心功能：

1. **单一货币支持**：只支持人民币(CNY)，简化货币处理逻辑
2. **股票专用**：专注股票投资记录，移除其他资产类型的复杂性
3. **Material Design 3**：使用现代化的 Material 设计系统，美观且一致的用户体验
4. **核心功能**：专注投资记录、共享投资、数据分析等核心需求

### 11.2 技术优势

- ✅ **真正原生应用**：Flutter 编译为机器码，性能优秀
- ✅ **Material Design 3**：现代化 UI 设计，开发效率高
- ✅ **简化数据模型**：专注股票投资，数据结构清晰
- ✅ **移动端就绪**：85%代码可直接复用到移动端
- ✅ **开发效率高**：相比 Qt 减少 70%开发时间

### 11.3 开发时间预估

**总开发时间：4-6 周**

- 第一阶段(1 周)：基础架构 + Material UI 组件
- 第二阶段(2 周)：核心功能实现
- 第三阶段(1 周)：共享投资功能
- 第四阶段(1 周)：测试优化和发布

### 11.4 与 Qt 版本对比

| 特性           | Qt 版本      | Flutter 版本 |
| -------------- | ------------ | ------------ |
| **开发难度**   | 高           | 中等         |
| **UI 美观度**  | 需大量自定义 | 开箱即用     |
| **动画效果**   | 复杂实现     | 内置支持     |
| **维护成本**   | 高           | 低           |
| **移动端扩展** | 困难         | 简单         |
| **开发时间**   | 8-12 周      | 4-6 周       |

这个开发文档为您的 Flutter Desktop 项目提供了完整的技术架构和实现指南。通过简化设计和 Material Design 3 系统，您将获得一个高性能、美观且易于维护的股票投资记账应用。
