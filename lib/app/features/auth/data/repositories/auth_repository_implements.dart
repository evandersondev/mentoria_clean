import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/features/auth/data/sources/auth_datasource.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/error_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/user_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImplementation implements IAuthRepository {
  AuthRepositoryImplementation(this._datasource);

  final IAuthDatasource _datasource;

  @override
  Future<Either<ErrorAuthEntity, AuthEntity>> login(AuthParams params) async {
    try {
      // ...
    } catch (e) {
      // ..
    }

    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorAuthEntity, bool>> logout() async {
    // ...
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorAuthEntity, UserEntity>> register(
      AuthParams params) async {
    // ...
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorAuthEntity, bool>> resetPassword(AuthParams params) async {
    // ...
    throw UnimplementedError();
  }
}
