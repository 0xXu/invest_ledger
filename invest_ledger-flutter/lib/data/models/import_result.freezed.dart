// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TxtImportResult _$TxtImportResultFromJson(Map<String, dynamic> json) {
  return _TxtImportResult.fromJson(json);
}

/// @nodoc
mixin _$TxtImportResult {
  int get totalLines => throw _privateConstructorUsedError; // 总行数
  int get successCount => throw _privateConstructorUsedError; // 成功导入数量
  int get duplicateCount => throw _privateConstructorUsedError; // 重复数据数量
  int get errorCount => throw _privateConstructorUsedError; // 错误数量
  List<ImportError> get errors => throw _privateConstructorUsedError; // 错误详情
  String get detectedFormat => throw _privateConstructorUsedError;

  /// Serializes this TxtImportResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TxtImportResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TxtImportResultCopyWith<TxtImportResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxtImportResultCopyWith<$Res> {
  factory $TxtImportResultCopyWith(
          TxtImportResult value, $Res Function(TxtImportResult) then) =
      _$TxtImportResultCopyWithImpl<$Res, TxtImportResult>;
  @useResult
  $Res call(
      {int totalLines,
      int successCount,
      int duplicateCount,
      int errorCount,
      List<ImportError> errors,
      String detectedFormat});
}

/// @nodoc
class _$TxtImportResultCopyWithImpl<$Res, $Val extends TxtImportResult>
    implements $TxtImportResultCopyWith<$Res> {
  _$TxtImportResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TxtImportResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLines = null,
    Object? successCount = null,
    Object? duplicateCount = null,
    Object? errorCount = null,
    Object? errors = null,
    Object? detectedFormat = null,
  }) {
    return _then(_value.copyWith(
      totalLines: null == totalLines
          ? _value.totalLines
          : totalLines // ignore: cast_nullable_to_non_nullable
              as int,
      successCount: null == successCount
          ? _value.successCount
          : successCount // ignore: cast_nullable_to_non_nullable
              as int,
      duplicateCount: null == duplicateCount
          ? _value.duplicateCount
          : duplicateCount // ignore: cast_nullable_to_non_nullable
              as int,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ImportError>,
      detectedFormat: null == detectedFormat
          ? _value.detectedFormat
          : detectedFormat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxtImportResultImplCopyWith<$Res>
    implements $TxtImportResultCopyWith<$Res> {
  factory _$$TxtImportResultImplCopyWith(_$TxtImportResultImpl value,
          $Res Function(_$TxtImportResultImpl) then) =
      __$$TxtImportResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalLines,
      int successCount,
      int duplicateCount,
      int errorCount,
      List<ImportError> errors,
      String detectedFormat});
}

/// @nodoc
class __$$TxtImportResultImplCopyWithImpl<$Res>
    extends _$TxtImportResultCopyWithImpl<$Res, _$TxtImportResultImpl>
    implements _$$TxtImportResultImplCopyWith<$Res> {
  __$$TxtImportResultImplCopyWithImpl(
      _$TxtImportResultImpl _value, $Res Function(_$TxtImportResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of TxtImportResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLines = null,
    Object? successCount = null,
    Object? duplicateCount = null,
    Object? errorCount = null,
    Object? errors = null,
    Object? detectedFormat = null,
  }) {
    return _then(_$TxtImportResultImpl(
      totalLines: null == totalLines
          ? _value.totalLines
          : totalLines // ignore: cast_nullable_to_non_nullable
              as int,
      successCount: null == successCount
          ? _value.successCount
          : successCount // ignore: cast_nullable_to_non_nullable
              as int,
      duplicateCount: null == duplicateCount
          ? _value.duplicateCount
          : duplicateCount // ignore: cast_nullable_to_non_nullable
              as int,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ImportError>,
      detectedFormat: null == detectedFormat
          ? _value.detectedFormat
          : detectedFormat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxtImportResultImpl implements _TxtImportResult {
  const _$TxtImportResultImpl(
      {required this.totalLines,
      required this.successCount,
      required this.duplicateCount,
      required this.errorCount,
      required final List<ImportError> errors,
      required this.detectedFormat})
      : _errors = errors;

  factory _$TxtImportResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxtImportResultImplFromJson(json);

  @override
  final int totalLines;
// 总行数
  @override
  final int successCount;
// 成功导入数量
  @override
  final int duplicateCount;
// 重复数据数量
  @override
  final int errorCount;
// 错误数量
  final List<ImportError> _errors;
// 错误数量
  @override
  List<ImportError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

// 错误详情
  @override
  final String detectedFormat;

  @override
  String toString() {
    return 'TxtImportResult(totalLines: $totalLines, successCount: $successCount, duplicateCount: $duplicateCount, errorCount: $errorCount, errors: $errors, detectedFormat: $detectedFormat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxtImportResultImpl &&
            (identical(other.totalLines, totalLines) ||
                other.totalLines == totalLines) &&
            (identical(other.successCount, successCount) ||
                other.successCount == successCount) &&
            (identical(other.duplicateCount, duplicateCount) ||
                other.duplicateCount == duplicateCount) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.detectedFormat, detectedFormat) ||
                other.detectedFormat == detectedFormat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalLines,
      successCount,
      duplicateCount,
      errorCount,
      const DeepCollectionEquality().hash(_errors),
      detectedFormat);

  /// Create a copy of TxtImportResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TxtImportResultImplCopyWith<_$TxtImportResultImpl> get copyWith =>
      __$$TxtImportResultImplCopyWithImpl<_$TxtImportResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxtImportResultImplToJson(
      this,
    );
  }
}

abstract class _TxtImportResult implements TxtImportResult {
  const factory _TxtImportResult(
      {required final int totalLines,
      required final int successCount,
      required final int duplicateCount,
      required final int errorCount,
      required final List<ImportError> errors,
      required final String detectedFormat}) = _$TxtImportResultImpl;

  factory _TxtImportResult.fromJson(Map<String, dynamic> json) =
      _$TxtImportResultImpl.fromJson;

  @override
  int get totalLines; // 总行数
  @override
  int get successCount; // 成功导入数量
  @override
  int get duplicateCount; // 重复数据数量
  @override
  int get errorCount; // 错误数量
  @override
  List<ImportError> get errors; // 错误详情
  @override
  String get detectedFormat;

  /// Create a copy of TxtImportResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TxtImportResultImplCopyWith<_$TxtImportResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImportError _$ImportErrorFromJson(Map<String, dynamic> json) {
  return _ImportError.fromJson(json);
}

/// @nodoc
mixin _$ImportError {
  int get lineNumber => throw _privateConstructorUsedError; // 行号
  String get lineContent => throw _privateConstructorUsedError; // 行内容
  String get errorType => throw _privateConstructorUsedError; // 错误类型
  String get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this ImportError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImportError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImportErrorCopyWith<ImportError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportErrorCopyWith<$Res> {
  factory $ImportErrorCopyWith(
          ImportError value, $Res Function(ImportError) then) =
      _$ImportErrorCopyWithImpl<$Res, ImportError>;
  @useResult
  $Res call(
      {int lineNumber,
      String lineContent,
      String errorType,
      String errorMessage});
}

/// @nodoc
class _$ImportErrorCopyWithImpl<$Res, $Val extends ImportError>
    implements $ImportErrorCopyWith<$Res> {
  _$ImportErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImportError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineNumber = null,
    Object? lineContent = null,
    Object? errorType = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      lineNumber: null == lineNumber
          ? _value.lineNumber
          : lineNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lineContent: null == lineContent
          ? _value.lineContent
          : lineContent // ignore: cast_nullable_to_non_nullable
              as String,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImportErrorImplCopyWith<$Res>
    implements $ImportErrorCopyWith<$Res> {
  factory _$$ImportErrorImplCopyWith(
          _$ImportErrorImpl value, $Res Function(_$ImportErrorImpl) then) =
      __$$ImportErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int lineNumber,
      String lineContent,
      String errorType,
      String errorMessage});
}

/// @nodoc
class __$$ImportErrorImplCopyWithImpl<$Res>
    extends _$ImportErrorCopyWithImpl<$Res, _$ImportErrorImpl>
    implements _$$ImportErrorImplCopyWith<$Res> {
  __$$ImportErrorImplCopyWithImpl(
      _$ImportErrorImpl _value, $Res Function(_$ImportErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImportError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineNumber = null,
    Object? lineContent = null,
    Object? errorType = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ImportErrorImpl(
      lineNumber: null == lineNumber
          ? _value.lineNumber
          : lineNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lineContent: null == lineContent
          ? _value.lineContent
          : lineContent // ignore: cast_nullable_to_non_nullable
              as String,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImportErrorImpl implements _ImportError {
  const _$ImportErrorImpl(
      {required this.lineNumber,
      required this.lineContent,
      required this.errorType,
      required this.errorMessage});

  factory _$ImportErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImportErrorImplFromJson(json);

  @override
  final int lineNumber;
// 行号
  @override
  final String lineContent;
// 行内容
  @override
  final String errorType;
// 错误类型
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ImportError(lineNumber: $lineNumber, lineContent: $lineContent, errorType: $errorType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportErrorImpl &&
            (identical(other.lineNumber, lineNumber) ||
                other.lineNumber == lineNumber) &&
            (identical(other.lineContent, lineContent) ||
                other.lineContent == lineContent) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, lineNumber, lineContent, errorType, errorMessage);

  /// Create a copy of ImportError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportErrorImplCopyWith<_$ImportErrorImpl> get copyWith =>
      __$$ImportErrorImplCopyWithImpl<_$ImportErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImportErrorImplToJson(
      this,
    );
  }
}

abstract class _ImportError implements ImportError {
  const factory _ImportError(
      {required final int lineNumber,
      required final String lineContent,
      required final String errorType,
      required final String errorMessage}) = _$ImportErrorImpl;

  factory _ImportError.fromJson(Map<String, dynamic> json) =
      _$ImportErrorImpl.fromJson;

  @override
  int get lineNumber; // 行号
  @override
  String get lineContent; // 行内容
  @override
  String get errorType; // 错误类型
  @override
  String get errorMessage;

  /// Create a copy of ImportError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImportErrorImplCopyWith<_$ImportErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
