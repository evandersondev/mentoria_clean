import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/errors/failures.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/credentials_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/exceptions.dart';
import '../sources/auth_datasource.dart';

@Injectable()
class AuthRepositoryImplementation implements IAuthRepository {
  final AuthDatasource _datasource;

  AuthRepositoryImplementation(this._datasource);

  @override
  Future<Either<Failure, CredentialsEntity>> get(AuthEntity params) async {
    try {
      final response = await _datasource.getToken(params);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CredentialsEntity>> update(
      CredentialsEntity params) async {
    try {
      final response = await _datasource.updateToken(params);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
