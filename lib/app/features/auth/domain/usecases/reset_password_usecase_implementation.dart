import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/features/auth/domain/entities/error_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

import 'reset_password_usecase.dart';

class ResetPasswordUsecaseImplementation implements IResetPasswordUsecase {
  ResetPasswordUsecaseImplementation(this._repository);

  final IAuthRepository _repository;

  @override
  Future<Either<ErrorAuthEntity, bool>> call(AuthParams params) async {
    // ...
    throw UnimplementedError();
  }
}
