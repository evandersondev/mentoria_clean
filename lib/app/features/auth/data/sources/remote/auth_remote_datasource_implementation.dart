import 'package:dio/dio.dart';

import 'package:mentoria_clean/app/features/auth/data/models/auth_model.dart';
import 'package:mentoria_clean/app/features/auth/data/sources/datasource.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/login_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/user_entity.dart';

import '../../models/user_model.dart';

class AuthRemoteDatasourceImplementation implements IAuthDatasource {
  final Dio _client;

  AuthRemoteDatasourceImplementation(this._client);

  @override
  Future<AuthEntity> login(LoginEntity params) async {
    final response = await _client.post('/login');
    return AuthModel.fromJson(response.data);
  }

  @override
  Future<bool> logout() async {
    return true;
  }

  @override
  Future<UserEntity> register(UserEntity params) async {
    final response = await _client.post('/register');
    return UserModel.fromJson(response.data);
  }

  @override
  Future<AuthEntity> resetPassword(LoginEntity params) async {
    final response = await _client.post('/reset-password');
    return AuthModel.fromJson(response.data);
  }
}
