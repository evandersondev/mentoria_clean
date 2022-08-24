import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/error_entity.dart';

import '../repositories/auth_repository.dart';

abstract class IGetCredentialsUsecase {
  Future<Either<ErrorAuthEntity, AuthEntity>> call(AuthParams params);
}
