// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_theme_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorThemeSettingImpl _$$ColorThemeSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$ColorThemeSettingImpl(
      colorScheme: $enumDecodeNullable(
              _$ProfitLossColorSchemeEnumMap, json['colorScheme']) ??
          ProfitLossColorScheme.chinese,
      useCustomColors: json['useCustomColors'] as bool? ?? true,
    );

Map<String, dynamic> _$$ColorThemeSettingImplToJson(
        _$ColorThemeSettingImpl instance) =>
    <String, dynamic>{
      'colorScheme': _$ProfitLossColorSchemeEnumMap[instance.colorScheme]!,
      'useCustomColors': instance.useCustomColors,
    };

const _$ProfitLossColorSchemeEnumMap = {
  ProfitLossColorScheme.chinese: 'chinese',
  ProfitLossColorScheme.western: 'western',
  ProfitLossColorScheme.custom: 'custom',
};
