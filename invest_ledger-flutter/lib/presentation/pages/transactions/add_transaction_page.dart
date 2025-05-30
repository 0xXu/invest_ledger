import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:decimal/decimal.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../../../data/models/transaction.dart';
import '../../providers/user_provider.dart';
import '../../providers/transaction_provider.dart';

class AddTransactionPage extends ConsumerStatefulWidget {
  const AddTransactionPage({super.key});

  @override
  ConsumerState<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends ConsumerState<AddTransactionPage> {
  final _formKey = GlobalKey<FormState>();
  final _stockCodeController = TextEditingController();
  final _stockNameController = TextEditingController();
  final _amountController = TextEditingController();
  final _unitPriceController = TextEditingController();
  final _profitLossController = TextEditingController();
  final _notesController = TextEditingController();

  DateTime _selectedDate = DateTime.now();
  List<String> _tags = [];

  @override
  void dispose() {
    _stockCodeController.dispose();
    _stockNameController.dispose();
    _amountController.dispose();
    _unitPriceController.dispose();
    _profitLossController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('添加交易'),
        actions: [
          TextButton(
            onPressed: _saveTransaction,
            child: const Text('保存'),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 股票信息
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '股票信息',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _stockCodeController,
                      decoration: const InputDecoration(
                        labelText: '股票代码',
                        hintText: '例如: 000001',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '请输入股票代码';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _stockNameController,
                      decoration: const InputDecoration(
                        labelText: '股票名称',
                        hintText: '例如: 平安银行',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '请输入股票名称';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 交易信息
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '交易信息',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      title: const Text('交易日期'),
                      subtitle: Text(DateFormat('yyyy-MM-dd').format(_selectedDate)),
                      trailing: const Icon(Icons.calendar_today),
                      onTap: _selectDate,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _amountController,
                            decoration: const InputDecoration(
                              labelText: '股数',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return '请输入股数';
                              }
                              if (double.tryParse(value) == null) {
                                return '请输入有效数字';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            controller: _unitPriceController,
                            decoration: const InputDecoration(
                              labelText: '单价 (¥)',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return '请输入单价';
                              }
                              if (double.tryParse(value) == null) {
                                return '请输入有效数字';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _profitLossController,
                      decoration: const InputDecoration(
                        labelText: '盈亏 (¥)',
                        hintText: '正数为盈利，负数为亏损',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '请输入盈亏金额';
                        }
                        if (double.tryParse(value) == null) {
                          return '请输入有效数字';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 备注
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '备注',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _notesController,
                      decoration: const InputDecoration(
                        labelText: '备注信息',
                        hintText: '可选，记录交易相关信息',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _saveTransaction() async {
    if (!_formKey.currentState!.validate()) return;

    final user = ref.read(userProvider);
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('用户未登录')),
      );
      return;
    }

    try {
      final transaction = Transaction(
        id: const Uuid().v4(),
        userId: user.id,
        date: _selectedDate,
        stockCode: _stockCodeController.text.trim(),
        stockName: _stockNameController.text.trim(),
        amount: Decimal.parse(_amountController.text.trim()),
        unitPrice: Decimal.parse(_unitPriceController.text.trim()),
        profitLoss: Decimal.parse(_profitLossController.text.trim()),
        tags: _tags,
        notes: _notesController.text.trim().isEmpty
            ? null
            : _notesController.text.trim(),
        createdAt: DateTime.now(),
      );

      await ref.read(transactionNotifierProvider.notifier).addTransaction(transaction);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('交易添加成功')),
        );
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('添加失败: $e')),
        );
      }
    }
  }
}
