import 'package:string_validator/string_validator.dart';

bool validateEmailAndPassword(String email, String password) {
  return isEmail(email) && password.isNotEmpty;
}
