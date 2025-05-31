// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AIConfigImpl _$$AIConfigImplFromJson(Map<String, dynamic> json) =>
    _$AIConfigImpl(
      baseUrl: json['baseUrl'] as String,
      geminiApiKey: json['geminiApiKey'] as String?,
      geminiModel: json['geminiModel'] as String? ?? 'gemini-1.5-flash',
      openaiApiKey: json['openaiApiKey'] as String?,
      openaiBaseUrl: json['openaiBaseUrl'] as String?,
      openaiModel: json['openaiModel'] as String? ?? 'gpt-3.5-turbo',
    );

Map<String, dynamic> _$$AIConfigImplToJson(_$AIConfigImpl instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'geminiApiKey': instance.geminiApiKey,
      'geminiModel': instance.geminiModel,
      'openaiApiKey': instance.openaiApiKey,
      'openaiBaseUrl': instance.openaiBaseUrl,
      'openaiModel': instance.openaiModel,
    };
