import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/core/errors/failures.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/login_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/user_entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthEntity>> login(LoginEntity params);
  Future<Either<Failure, UserEntity>> register(UserEntity params);
  Future<Either<Failure, AuthEntity>> resetPassword(LoginEntity params);
  Future<Either<Failure, bool>> logout();
}
