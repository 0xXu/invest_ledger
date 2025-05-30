// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_investment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SharedInvestmentImpl _$$SharedInvestmentImplFromJson(
        Map<String, dynamic> json) =>
    _$SharedInvestmentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      stockCode: json['stockCode'] as String,
      stockName: json['stockName'] as String,
      totalAmount: Decimal.fromJson(json['totalAmount'] as String),
      totalShares: Decimal.fromJson(json['totalShares'] as String),
      initialPrice: Decimal.fromJson(json['initialPrice'] as String),
      currentPrice: json['currentPrice'] == null
          ? null
          : Decimal.fromJson(json['currentPrice'] as String),
      sellAmount: json['sellAmount'] == null
          ? null
          : Decimal.fromJson(json['sellAmount'] as String),
      createdDate: DateTime.parse(json['createdDate'] as String),
      status: $enumDecodeNullable(
              _$SharedInvestmentStatusEnumMap, json['status']) ??
          SharedInvestmentStatus.active,
      notes: json['notes'] as String?,
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => SharedInvestmentParticipant.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SharedInvestmentImplToJson(
        _$SharedInvestmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'stockCode': instance.stockCode,
      'stockName': instance.stockName,
      'totalAmount': instance.totalAmount,
      'totalShares': instance.totalShares,
      'initialPrice': instance.initialPrice,
      'currentPrice': instance.currentPrice,
      'sellAmount': instance.sellAmount,
      'createdDate': instance.createdDate.toIso8601String(),
      'status': _$SharedInvestmentStatusEnumMap[instance.status]!,
      'notes': instance.notes,
      'participants': instance.participants,
    };

const _$SharedInvestmentStatusEnumMap = {
  SharedInvestmentStatus.active: 'active',
  SharedInvestmentStatus.completed: 'completed',
  SharedInvestmentStatus.cancelled: 'cancelled',
};

_$SharedInvestmentParticipantImpl _$$SharedInvestmentParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$SharedInvestmentParticipantImpl(
      id: json['id'] as String,
      sharedInvestmentId: json['sharedInvestmentId'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      investmentAmount: Decimal.fromJson(json['investmentAmount'] as String),
      shares: Decimal.fromJson(json['shares'] as String),
      profitLoss: Decimal.fromJson(json['profitLoss'] as String),
      transactionId: json['transactionId'] as String?,
    );

Map<String, dynamic> _$$SharedInvestmentParticipantImplToJson(
        _$SharedInvestmentParticipantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sharedInvestmentId': instance.sharedInvestmentId,
      'userId': instance.userId,
      'userName': instance.userName,
      'investmentAmount': instance.investmentAmount,
      'shares': instance.shares,
      'profitLoss': instance.profitLoss,
      'transactionId': instance.transactionId,
    };
