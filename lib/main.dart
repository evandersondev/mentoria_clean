import 'package:flutter/material.dart';

import 'package:mentoria_clean/app/core/inject/inject.dart';

import 'app_widget.dart';

void main() {
  Injector.init();

  runApp(const AppWidget());
}
