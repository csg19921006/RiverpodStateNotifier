import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_model.freezed.dart';
part 'app_setting_model.g.dart';

@freezed
class AppSettingModel with _$AppSettingModel {
  const factory AppSettingModel({
    required String name,
    required String email,
  }) = _AppSettingModel;

  factory AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingModelFromJson(json);
}
