import 'package:equatable/equatable.dart';

class CredentialsEntity extends Equatable {
  final String token;
  final String refreshToken;

  const CredentialsEntity({
    required this.token,
    required this.refreshToken,
  });

  @override
  List<Object?> get props => [token, refreshToken];
}
