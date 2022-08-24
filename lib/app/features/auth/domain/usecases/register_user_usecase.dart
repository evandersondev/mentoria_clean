import 'package:dartz/dartz.dart';

import '../entities/error_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

abstract class IRegisterUsercase {
  Future<Either<ErrorAuthEntity, UserEntity>> call(AuthParams params);
}
