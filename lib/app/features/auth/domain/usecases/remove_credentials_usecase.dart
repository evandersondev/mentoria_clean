import 'package:dartz/dartz.dart';

import '../entities/error_entity.dart';

abstract class IRemoveCredentialsUsecase {
  Future<Either<ErrorAuthEntity, bool>> call();
}
