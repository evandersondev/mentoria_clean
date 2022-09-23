import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/core/errors/failures.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/credentials_entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, CredentialsEntity>> get(AuthEntity params);
  Future<Either<Failure, CredentialsEntity>> update(CredentialsEntity params);
}
