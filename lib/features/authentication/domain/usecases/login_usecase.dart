import 'package:promilo/core/exception/base_exception.dart';
import 'package:promilo/features/authentication/data/models/user_model.dart';
import 'package:promilo/features/authentication/domain/repository/auth_repository_impl.dart';

import '../../data/models/auth_response_model.dart';

final class LoginUsecase {
  final AuthRepository repository;
  LoginUsecase({required this.repository});

  Future<AuthResponseModel> call(UserModel user) async {
    try {
      return await repository.login(user);
    } catch (e) {
      throw BaseException(e.toString());
    }
  }
}
