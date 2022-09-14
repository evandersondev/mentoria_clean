import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/errors/exceptions.dart';
import 'package:mentoria_clean/app/core/errors/failures.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/login_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/user_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

import '../sources/datasource.dart';

@Injectable()
class AuthRepositoryImplementation implements IAuthRepository {
  final IAuthDatasource _datasource;

  AuthRepositoryImplementation(this._datasource);

  @override
  Future<Either<Failure, AuthEntity>> login(LoginEntity params) async {
    try {
      final response = await _datasource.login(params);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    return Right(await _datasource.logout());
  }

  @override
  Future<Either<Failure, UserEntity>> register(UserEntity params) async {
    try {
      final response = await _datasource.register(params);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> resetPassword(LoginEntity params) async {
    try {
      final response = await _datasource.resetPassword(params);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
