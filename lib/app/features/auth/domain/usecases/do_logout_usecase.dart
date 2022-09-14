import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:mentoria_clean/app/core/usecase/usecase.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

@Injectable()
class DoLogoutUsecase implements Usecase<bool, NoParams> {
  final IAuthRepository _repository;

  DoLogoutUsecase(this._repository);

  @override
  Future<Either<Failure, bool>> call(NoParams input) async {
    return await _repository.logout();
  }
}
