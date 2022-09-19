import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/usecase/usecase.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failures.dart';
import '../entities/auth_entity.dart';
import '../entities/credentials_entity.dart';

@Injectable()
class GetCredentialsUsecase implements Usecase<CredentialsEntity, AuthEntity> {
  final IAuthRepository _repository;

  GetCredentialsUsecase(this._repository);

  @override
  Future<Either<Failure, CredentialsEntity>> call(AuthEntity input) async {
    return await _repository.get(input);
  }
}
