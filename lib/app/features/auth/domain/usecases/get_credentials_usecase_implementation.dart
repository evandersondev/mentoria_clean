import 'package:dartz/dartz.dart';

import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/error_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/get_credentials_usecase.dart';

class GetCredentialsUsecaseImplementation implements IGetCredentialsUsecase {
  GetCredentialsUsecaseImplementation(this._repository);

  final IAuthRepository _repository;

  @override
  Future<Either<ErrorAuthEntity, AuthEntity>> call(AuthParams params) async {
    // ...
    throw UnimplementedError();
  }
}
