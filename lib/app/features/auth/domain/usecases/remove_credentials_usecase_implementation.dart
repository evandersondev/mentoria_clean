import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/features/auth/domain/usecases/remove_credentials_usecase.dart';

import '../entities/error_entity.dart';
import '../repositories/auth_repository.dart';

class RemoveCredentialsUsecaseImplementation
    implements IRemoveCredentialsUsecase {
  RemoveCredentialsUsecaseImplementation(this._repository);

  final IAuthRepository _repository;

  @override
  Future<Either<ErrorAuthEntity, bool>> call() async {
    // ...
    throw UnimplementedError();
  }
}
