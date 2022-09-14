import '../../domain/entities/auth_entity.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/entities/user_entity.dart';

abstract class IAuthDatasource {
  Future<AuthEntity> login(LoginEntity params);
  Future<UserEntity> register(UserEntity params);
  Future<AuthEntity> resetPassword(LoginEntity params);
  Future<bool> logout();
}
