import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/features/auth/domain/entities/error_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/user_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/register_user_usecase.dart';

class RegisterUsecaseImplementation implements IRegisterUsercase {
  RegisterUsecaseImplementation(this._repository);

  final IAuthRepository _repository;

  @override
  Future<Either<ErrorAuthEntity, UserEntity>> call(AuthParams params) async {
    // ...
    throw UnimplementedError();
  }
}
