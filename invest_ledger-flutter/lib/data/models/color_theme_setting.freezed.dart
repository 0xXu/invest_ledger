// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_theme_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColorThemeSetting _$ColorThemeSettingFromJson(Map<String, dynamic> json) {
  return _ColorThemeSetting.fromJson(json);
}

/// @nodoc
mixin _$ColorThemeSetting {
  ProfitLossColorScheme get colorScheme => throw _privateConstructorUsedError;
  bool get useCustomColors => throw _privateConstructorUsedError;

  /// Serializes this ColorThemeSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorThemeSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorThemeSettingCopyWith<ColorThemeSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorThemeSettingCopyWith<$Res> {
  factory $ColorThemeSettingCopyWith(
          ColorThemeSetting value, $Res Function(ColorThemeSetting) then) =
      _$ColorThemeSettingCopyWithImpl<$Res, ColorThemeSetting>;
  @useResult
  $Res call({ProfitLossColorScheme colorScheme, bool useCustomColors});
}

/// @nodoc
class _$ColorThemeSettingCopyWithImpl<$Res, $Val extends ColorThemeSetting>
    implements $ColorThemeSettingCopyWith<$Res> {
  _$ColorThemeSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorThemeSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorScheme = null,
    Object? useCustomColors = null,
  }) {
    return _then(_value.copyWith(
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ProfitLossColorScheme,
      useCustomColors: null == useCustomColors
          ? _value.useCustomColors
          : useCustomColors // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorThemeSettingImplCopyWith<$Res>
    implements $ColorThemeSettingCopyWith<$Res> {
  factory _$$ColorThemeSettingImplCopyWith(_$ColorThemeSettingImpl value,
          $Res Function(_$ColorThemeSettingImpl) then) =
      __$$ColorThemeSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfitLossColorScheme colorScheme, bool useCustomColors});
}

/// @nodoc
class __$$ColorThemeSettingImplCopyWithImpl<$Res>
    extends _$ColorThemeSettingCopyWithImpl<$Res, _$ColorThemeSettingImpl>
    implements _$$ColorThemeSettingImplCopyWith<$Res> {
  __$$ColorThemeSettingImplCopyWithImpl(_$ColorThemeSettingImpl _value,
      $Res Function(_$ColorThemeSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorThemeSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorScheme = null,
    Object? useCustomColors = null,
  }) {
    return _then(_$ColorThemeSettingImpl(
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ProfitLossColorScheme,
      useCustomColors: null == useCustomColors
          ? _value.useCustomColors
          : useCustomColors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorThemeSettingImpl implements _ColorThemeSetting {
  const _$ColorThemeSettingImpl(
      {this.colorScheme = ProfitLossColorScheme.chinese,
      this.useCustomColors = true});

  factory _$ColorThemeSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorThemeSettingImplFromJson(json);

  @override
  @JsonKey()
  final ProfitLossColorScheme colorScheme;
  @override
  @JsonKey()
  final bool useCustomColors;

  @override
  String toString() {
    return 'ColorThemeSetting(colorScheme: $colorScheme, useCustomColors: $useCustomColors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorThemeSettingImpl &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.useCustomColors, useCustomColors) ||
                other.useCustomColors == useCustomColors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, colorScheme, useCustomColors);

  /// Create a copy of ColorThemeSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorThemeSettingImplCopyWith<_$ColorThemeSettingImpl> get copyWith =>
      __$$ColorThemeSettingImplCopyWithImpl<_$ColorThemeSettingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorThemeSettingImplToJson(
      this,
    );
  }
}

abstract class _ColorThemeSetting implements ColorThemeSetting {
  const factory _ColorThemeSetting(
      {final ProfitLossColorScheme colorScheme,
      final bool useCustomColors}) = _$ColorThemeSettingImpl;

  factory _ColorThemeSetting.fromJson(Map<String, dynamic> json) =
      _$ColorThemeSettingImpl.fromJson;

  @override
  ProfitLossColorScheme get colorScheme;
  @override
  bool get useCustomColors;

  /// Create a copy of ColorThemeSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorThemeSettingImplCopyWith<_$ColorThemeSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
