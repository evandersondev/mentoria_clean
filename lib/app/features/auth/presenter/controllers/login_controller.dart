import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/get_credentials_usecase.dart';

class LoginController {
  LoginController(this.usecase);

  final IGetCredentialsUsecase usecase;

  Future<void> login({required String email, required String password}) async {
    final params = AuthParams();

    final result = await usecase.call(params);

    result.fold((error) {
      // if error show error message
    }, (auth) {
      // if success move to home screen
    });
  }
}
