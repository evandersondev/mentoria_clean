import 'package:get_it/get_it.dart';

import 'package:mentoria_clean/app/core/client/client.dart';
import 'package:mentoria_clean/app/features/auth/data/repositories/auth_repository_implements.dart';
import 'package:mentoria_clean/app/features/auth/data/sources/auth_datasource.dart';
import 'package:mentoria_clean/app/features/auth/data/sources/remotes/auth_remote_datasource_implementation.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/register_user_usecase.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/register_user_usecase_implementation.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/remove_credentials_usecase.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:mentoria_clean/app/features/auth/domain/usecases/reset_password_usecase_implementation.dart';
import 'package:mentoria_clean/app/features/auth/presenter/controllers/login_controller.dart';

import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/get_credentials_usecase.dart';
import '../../features/auth/domain/usecases/get_credentials_usecase_implementation.dart';
import '../../features/auth/domain/usecases/remove_credentials_usecase_implementation.dart';
import '../client/dio_client.dart';

final getIt = GetIt.instance;

class Injector {
  static void init() {
    // Clients
    getIt.registerLazySingleton<IHttpClient>(() => DioClient());

    // Datasources
    getIt.registerLazySingleton<IAuthDatasource>(
        () => AuthRemoteDatasourceImplementation(getIt()));

    // Repositories
    getIt.registerLazySingleton<IAuthRepository>(
        () => AuthRepositoryImplementation(getIt()));

    // Usecases
    getIt.registerLazySingleton<IGetCredentialsUsecase>(
        () => GetCredentialsUsecaseImplementation(getIt()));
    getIt.registerLazySingleton<IRegisterUsercase>(
        () => RegisterUsecaseImplementation(getIt()));
    getIt.registerLazySingleton<IRemoveCredentialsUsecase>(
        () => RemoveCredentialsUsecaseImplementation(getIt()));
    getIt.registerLazySingleton<IResetPasswordUsecase>(
        () => ResetPasswordUsecaseImplementation(getIt()));

    // Controllers
    getIt
        .registerLazySingleton<LoginController>(() => LoginController(getIt()));
  }
}
