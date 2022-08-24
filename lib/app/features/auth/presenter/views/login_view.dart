import 'package:flutter/material.dart';

import 'package:mentoria_clean/app/core/inject/inject.dart';
import 'package:mentoria_clean/app/features/auth/presenter/controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final loginController = getIt.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
