import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mentoria_clean/app/core/constants/base_url.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/entities/credentials_entity.dart';
import '../models/credentials_model.dart';

part 'auth_datasource.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class AuthDatasource {
  factory AuthDatasource(Dio dio, {String baseUrl}) = _AuthDatasource;

  @POST("/auth/token")
  Future<CredentialsModel> getToken(AuthEntity params);

  @GET("/auth/token/refresh")
  Future<CredentialsModel> updateToken(CredentialsEntity params);
}
