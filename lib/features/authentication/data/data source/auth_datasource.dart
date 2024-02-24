import 'package:promilo/features/authentication/data/models/auth_response_model.dart';
import 'package:promilo/features/authentication/data/models/user_model.dart';

abstract class AuthDatasource {
  Future<AuthResponseModel> login(UserModel user);
}
