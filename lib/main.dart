import 'package:flutter/material.dart';

import 'package:mentoria_clean/app/core/configs/inject.dart';

import 'app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(const AppWidget());
}
