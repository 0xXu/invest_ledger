// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestmentGoalImpl _$$InvestmentGoalImplFromJson(Map<String, dynamic> json) =>
    _$InvestmentGoalImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      type: $enumDecode(_$GoalTypeEnumMap, json['type']),
      period: $enumDecode(_$GoalPeriodEnumMap, json['period']),
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num?)?.toInt(),
      targetAmount: Decimal.fromJson(json['targetAmount'] as String),
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$InvestmentGoalImplToJson(
        _$InvestmentGoalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': _$GoalTypeEnumMap[instance.type]!,
      'period': _$GoalPeriodEnumMap[instance.period]!,
      'year': instance.year,
      'month': instance.month,
      'targetAmount': instance.targetAmount,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$GoalTypeEnumMap = {
  GoalType.profit: 'profit',
  GoalType.roi: 'roi',
};

const _$GoalPeriodEnumMap = {
  GoalPeriod.monthly: 'monthly',
  GoalPeriod.yearly: 'yearly',
};
