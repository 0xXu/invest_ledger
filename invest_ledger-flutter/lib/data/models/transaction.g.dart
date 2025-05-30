// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      date: DateTime.parse(json['date'] as String),
      stockCode: json['stockCode'] as String,
      stockName: json['stockName'] as String,
      amount: Decimal.fromJson(json['amount'] as String),
      unitPrice: Decimal.fromJson(json['unitPrice'] as String),
      profitLoss: Decimal.fromJson(json['profitLoss'] as String),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      notes: json['notes'] as String?,
      sharedInvestmentId: json['sharedInvestmentId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'date': instance.date.toIso8601String(),
      'stockCode': instance.stockCode,
      'stockName': instance.stockName,
      'amount': instance.amount,
      'unitPrice': instance.unitPrice,
      'profitLoss': instance.profitLoss,
      'tags': instance.tags,
      'notes': instance.notes,
      'sharedInvestmentId': instance.sharedInvestmentId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
