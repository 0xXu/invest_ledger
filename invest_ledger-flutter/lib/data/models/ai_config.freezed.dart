// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AIConfig _$AIConfigFromJson(Map<String, dynamic> json) {
  return _AIConfig.fromJson(json);
}

/// @nodoc
mixin _$AIConfig {
  String get baseUrl => throw _privateConstructorUsedError;
  String? get geminiApiKey => throw _privateConstructorUsedError;
  String get geminiModel => throw _privateConstructorUsedError;
  String? get openaiApiKey => throw _privateConstructorUsedError;
  String? get openaiBaseUrl => throw _privateConstructorUsedError;
  String get openaiModel => throw _privateConstructorUsedError;

  /// Serializes this AIConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AIConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIConfigCopyWith<AIConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIConfigCopyWith<$Res> {
  factory $AIConfigCopyWith(AIConfig value, $Res Function(AIConfig) then) =
      _$AIConfigCopyWithImpl<$Res, AIConfig>;
  @useResult
  $Res call(
      {String baseUrl,
      String? geminiApiKey,
      String geminiModel,
      String? openaiApiKey,
      String? openaiBaseUrl,
      String openaiModel});
}

/// @nodoc
class _$AIConfigCopyWithImpl<$Res, $Val extends AIConfig>
    implements $AIConfigCopyWith<$Res> {
  _$AIConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AIConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? geminiApiKey = freezed,
    Object? geminiModel = null,
    Object? openaiApiKey = freezed,
    Object? openaiBaseUrl = freezed,
    Object? openaiModel = null,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      geminiApiKey: freezed == geminiApiKey
          ? _value.geminiApiKey
          : geminiApiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      geminiModel: null == geminiModel
          ? _value.geminiModel
          : geminiModel // ignore: cast_nullable_to_non_nullable
              as String,
      openaiApiKey: freezed == openaiApiKey
          ? _value.openaiApiKey
          : openaiApiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      openaiBaseUrl: freezed == openaiBaseUrl
          ? _value.openaiBaseUrl
          : openaiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openaiModel: null == openaiModel
          ? _value.openaiModel
          : openaiModel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIConfigImplCopyWith<$Res>
    implements $AIConfigCopyWith<$Res> {
  factory _$$AIConfigImplCopyWith(
          _$AIConfigImpl value, $Res Function(_$AIConfigImpl) then) =
      __$$AIConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseUrl,
      String? geminiApiKey,
      String geminiModel,
      String? openaiApiKey,
      String? openaiBaseUrl,
      String openaiModel});
}

/// @nodoc
class __$$AIConfigImplCopyWithImpl<$Res>
    extends _$AIConfigCopyWithImpl<$Res, _$AIConfigImpl>
    implements _$$AIConfigImplCopyWith<$Res> {
  __$$AIConfigImplCopyWithImpl(
      _$AIConfigImpl _value, $Res Function(_$AIConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AIConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? geminiApiKey = freezed,
    Object? geminiModel = null,
    Object? openaiApiKey = freezed,
    Object? openaiBaseUrl = freezed,
    Object? openaiModel = null,
  }) {
    return _then(_$AIConfigImpl(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      geminiApiKey: freezed == geminiApiKey
          ? _value.geminiApiKey
          : geminiApiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      geminiModel: null == geminiModel
          ? _value.geminiModel
          : geminiModel // ignore: cast_nullable_to_non_nullable
              as String,
      openaiApiKey: freezed == openaiApiKey
          ? _value.openaiApiKey
          : openaiApiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      openaiBaseUrl: freezed == openaiBaseUrl
          ? _value.openaiBaseUrl
          : openaiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openaiModel: null == openaiModel
          ? _value.openaiModel
          : openaiModel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AIConfigImpl implements _AIConfig {
  const _$AIConfigImpl(
      {required this.baseUrl,
      this.geminiApiKey,
      this.geminiModel = 'gemini-1.5-flash',
      this.openaiApiKey,
      this.openaiBaseUrl,
      this.openaiModel = 'gpt-3.5-turbo'});

  factory _$AIConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIConfigImplFromJson(json);

  @override
  final String baseUrl;
  @override
  final String? geminiApiKey;
  @override
  @JsonKey()
  final String geminiModel;
  @override
  final String? openaiApiKey;
  @override
  final String? openaiBaseUrl;
  @override
  @JsonKey()
  final String openaiModel;

  @override
  String toString() {
    return 'AIConfig(baseUrl: $baseUrl, geminiApiKey: $geminiApiKey, geminiModel: $geminiModel, openaiApiKey: $openaiApiKey, openaiBaseUrl: $openaiBaseUrl, openaiModel: $openaiModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIConfigImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.geminiApiKey, geminiApiKey) ||
                other.geminiApiKey == geminiApiKey) &&
            (identical(other.geminiModel, geminiModel) ||
                other.geminiModel == geminiModel) &&
            (identical(other.openaiApiKey, openaiApiKey) ||
                other.openaiApiKey == openaiApiKey) &&
            (identical(other.openaiBaseUrl, openaiBaseUrl) ||
                other.openaiBaseUrl == openaiBaseUrl) &&
            (identical(other.openaiModel, openaiModel) ||
                other.openaiModel == openaiModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseUrl, geminiApiKey,
      geminiModel, openaiApiKey, openaiBaseUrl, openaiModel);

  /// Create a copy of AIConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIConfigImplCopyWith<_$AIConfigImpl> get copyWith =>
      __$$AIConfigImplCopyWithImpl<_$AIConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AIConfigImplToJson(
      this,
    );
  }
}

abstract class _AIConfig implements AIConfig {
  const factory _AIConfig(
      {required final String baseUrl,
      final String? geminiApiKey,
      final String geminiModel,
      final String? openaiApiKey,
      final String? openaiBaseUrl,
      final String openaiModel}) = _$AIConfigImpl;

  factory _AIConfig.fromJson(Map<String, dynamic> json) =
      _$AIConfigImpl.fromJson;

  @override
  String get baseUrl;
  @override
  String? get geminiApiKey;
  @override
  String get geminiModel;
  @override
  String? get openaiApiKey;
  @override
  String? get openaiBaseUrl;
  @override
  String get openaiModel;

  /// Create a copy of AIConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIConfigImplCopyWith<_$AIConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
