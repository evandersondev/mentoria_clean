import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/usecase/usecase.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

@Injectable()
class RegisterUserUsecase implements Usecase<UserEntity, UserEntity> {
  final IAuthRepository _repository;

  RegisterUserUsecase(this._repository);

  @override
  Future<Either<Failure, UserEntity>> call(UserEntity params) async {
    return await _repository.register(params);
  }
}
