import 'package:mentoria_clean/app/core/client/client.dart';
import 'package:mentoria_clean/app/features/auth/data/sources/auth_datasource.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

import '../../models/user_model.dart';

class AuthRemoteDatasourceImplementation implements IAuthDatasource {
  AuthRemoteDatasourceImplementation(this._client);

  final IHttpClient _client;

  @override
  Future<UserModel> login(AuthParams params) async {
    // ...

    throw UnimplementedError();
  }

  @override
  Future<bool> logout() async {
    // ...
    // await client.delete('', id: '');
    throw UnimplementedError();
  }

  @override
  Future<UserModel> register(AuthParams params) async {
    // ...
    // await client.post('', body: {});
    throw UnimplementedError();
  }

  @override
  Future<bool> resetPassword(AuthParams params) async {
    // ...
    // await client.put('', body: {});
    throw UnimplementedError();
  }
}
