import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/error_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/user_entity.dart';

abstract class IAuthRepository {
  Future<Either<ErrorAuthEntity, AuthEntity>> login(AuthParams params);
  Future<Either<ErrorAuthEntity, UserEntity>> register(AuthParams params);
  Future<Either<ErrorAuthEntity, bool>> resetPassword(AuthParams params);
  Future<Either<ErrorAuthEntity, bool>> logout();
}

class AuthParams {
  // ...
}
