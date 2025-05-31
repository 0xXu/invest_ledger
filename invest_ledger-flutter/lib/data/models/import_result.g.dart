// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TxtImportResultImpl _$$TxtImportResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TxtImportResultImpl(
      totalLines: (json['totalLines'] as num).toInt(),
      successCount: (json['successCount'] as num).toInt(),
      duplicateCount: (json['duplicateCount'] as num).toInt(),
      errorCount: (json['errorCount'] as num).toInt(),
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ImportError.fromJson(e as Map<String, dynamic>))
          .toList(),
      detectedFormat: json['detectedFormat'] as String,
    );

Map<String, dynamic> _$$TxtImportResultImplToJson(
        _$TxtImportResultImpl instance) =>
    <String, dynamic>{
      'totalLines': instance.totalLines,
      'successCount': instance.successCount,
      'duplicateCount': instance.duplicateCount,
      'errorCount': instance.errorCount,
      'errors': instance.errors,
      'detectedFormat': instance.detectedFormat,
    };

_$ImportErrorImpl _$$ImportErrorImplFromJson(Map<String, dynamic> json) =>
    _$ImportErrorImpl(
      lineNumber: (json['lineNumber'] as num).toInt(),
      lineContent: json['lineContent'] as String,
      errorType: json['errorType'] as String,
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$$ImportErrorImplToJson(_$ImportErrorImpl instance) =>
    <String, dynamic>{
      'lineNumber': instance.lineNumber,
      'lineContent': instance.lineContent,
      'errorType': instance.errorType,
      'errorMessage': instance.errorMessage,
    };
