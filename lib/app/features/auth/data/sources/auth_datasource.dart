import 'package:mentoria_clean/app/features/auth/data/models/user_model.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

abstract class IAuthDatasource {
  Future<UserModel> login(AuthParams params);
  Future<bool> logout();
  Future<UserModel> register(AuthParams params);
  Future<bool> resetPassword(AuthParams params);
}
