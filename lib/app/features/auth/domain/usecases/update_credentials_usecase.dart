import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/errors/failures.dart';
import 'package:mentoria_clean/app/core/usecase/usecase.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/credentials_entity.dart';

import '../repositories/auth_repository.dart';

@Injectable()
class UpdateCredentialsUsecase
    implements Usecase<CredentialsEntity, CredentialsEntity> {
  final IAuthRepository _repository;

  UpdateCredentialsUsecase(this._repository);

  @override
  Future<Either<Failure, CredentialsEntity>> call(
      CredentialsEntity input) async {
    return await _repository.update(input);
  }
}
