import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mentoria_clean/app/features/auth/domain/entities/credentials_entity.dart';

part 'credentials_model.freezed.dart';
part 'credentials_model.g.dart';

@Freezed()
class CredentialsModel extends CredentialsEntity with _$CredentialsModel {
  const factory CredentialsModel({
    required String token,
    required String refreshToken,
  }) = _CredentialsModel;

  factory CredentialsModel.fromJson(Map<String, Object?> json) =>
      _$CredentialsModelFromJson(json);
}
