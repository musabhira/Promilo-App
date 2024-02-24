import 'package:promilo/features/authentication/data/data%20source/auth_datasource.dart';
import 'package:promilo/features/authentication/data/data%20source/auth_datasource_impl.dart';
import 'package:promilo/features/authentication/data/models/auth_response_model.dart';
import 'package:promilo/features/authentication/data/models/user_model.dart';
import 'package:promilo/features/authentication/domain/repository/auth_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_impl.g.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;
  AuthRepositoryImpl({required this.datasource});
  @override
  Future<AuthResponseModel> login(UserModel user) {
    return datasource.login(user);
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(datasource: ref.watch(authDatasourceProvider));
}
