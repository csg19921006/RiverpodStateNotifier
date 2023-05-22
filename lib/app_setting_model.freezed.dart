// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingModel _$AppSettingModelFromJson(Map<String, dynamic> json) {
  return _AppSettingModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingModelCopyWith<AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingModelCopyWith<$Res> {
  factory $AppSettingModelCopyWith(
          AppSettingModel value, $Res Function(AppSettingModel) then) =
      _$AppSettingModelCopyWithImpl<$Res, AppSettingModel>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$AppSettingModelCopyWithImpl<$Res, $Val extends AppSettingModel>
    implements $AppSettingModelCopyWith<$Res> {
  _$AppSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingModelCopyWith<$Res>
    implements $AppSettingModelCopyWith<$Res> {
  factory _$$_AppSettingModelCopyWith(
          _$_AppSettingModel value, $Res Function(_$_AppSettingModel) then) =
      __$$_AppSettingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$_AppSettingModelCopyWithImpl<$Res>
    extends _$AppSettingModelCopyWithImpl<$Res, _$_AppSettingModel>
    implements _$$_AppSettingModelCopyWith<$Res> {
  __$$_AppSettingModelCopyWithImpl(
      _$_AppSettingModel _value, $Res Function(_$_AppSettingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$_AppSettingModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettingModel implements _AppSettingModel {
  const _$_AppSettingModel({required this.name, required this.email});

  factory _$_AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingModelFromJson(json);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'AppSettingModel(name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingModelCopyWith<_$_AppSettingModel> get copyWith =>
      __$$_AppSettingModelCopyWithImpl<_$_AppSettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingModelToJson(
      this,
    );
  }
}

abstract class _AppSettingModel implements AppSettingModel {
  const factory _AppSettingModel(
      {required final String name,
      required final String email}) = _$_AppSettingModel;

  factory _AppSettingModel.fromJson(Map<String, dynamic> json) =
      _$_AppSettingModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingModelCopyWith<_$_AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
