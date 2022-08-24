import 'package:dartz/dartz.dart';

import '../entities/error_entity.dart';
import '../repositories/auth_repository.dart';

abstract class IResetPasswordUsecase {
  Future<Either<ErrorAuthEntity, bool>> call(AuthParams params);
}
