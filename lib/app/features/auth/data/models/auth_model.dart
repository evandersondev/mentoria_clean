import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@Freezed()
class AuthModel extends AuthEntity with _$AuthModel {
  const factory AuthModel({
    required String token,
    required String refreshToken,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, Object?> json) =>
      _$AuthModelFromJson(json);
}
