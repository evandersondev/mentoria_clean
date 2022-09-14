import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/usecase/usecase.dart';

import '../../../../core/errors/failures.dart';
import '../entities/auth_entity.dart';
import '../entities/login_entity.dart';
import '../repositories/auth_repository.dart';

@Injectable()
class ResetPasswordUsecase implements Usecase<AuthEntity, LoginEntity> {
  final IAuthRepository _repository;

  ResetPasswordUsecase(this._repository);

  @override
  Future<Either<Failure, AuthEntity>> call(LoginEntity params) async {
    return await _repository.resetPassword(params);
  }
}
