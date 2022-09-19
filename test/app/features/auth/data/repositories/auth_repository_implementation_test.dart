import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:mentoria_clean/app/features/auth/data/models/credentials_model.dart';
import 'package:mentoria_clean/app/features/auth/data/sources/auth_datasource.dart';
import 'package:mentoria_clean/app/features/auth/domain/entities/auth_entity.dart';
import 'package:mentoria_clean/app/features/auth/domain/repositories/auth_repository.dart';

import '../../../../../inject.dart';

class AuthDatasourceMock extends Mock implements AuthDatasource {}

void main() {
  group('Auth Repositoty Tests', () {
    late AuthDatasource datasource;
    late IAuthRepository repository;

    setUp(() {
      configureTestDependencies();
      datasource = AuthDatasourceMock();
      repository = getIt.get<IAuthRepository>();
    });

    test('Shoud be return credentials when success', () async {
      const params = AuthEntity(email: '', password: '');

      when(datasource.getToken(params)).thenAnswer(
        (_) async => const CredentialsModel(token: '123', refreshToken: '123'),
      );

      final reponse = await repository.get(params);
      expect(reponse, isA<CredentialsModel>());
    });
  });
}
