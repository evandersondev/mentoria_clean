import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/usecase/usecase.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failures.dart';
import '../entities/auth_entity.dart';
import '../entities/login_entity.dart';

@Injectable()
class DoLoginUsecaseImplementation implements Usecase<AuthEntity, LoginEntity> {
  final IAuthRepository _repository;

  DoLoginUsecaseImplementation(this._repository);

  @override
  Future<Either<Failure, AuthEntity>> call(LoginEntity input) async {
    return await _repository.login(input);
  }
}
