import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:promilo/core/exception/base_exception.dart';
import 'package:promilo/features/authentication/data/data%20source/auth_datasource.dart';
import 'package:promilo/features/authentication/data/models/auth_response_model.dart';
import 'package:promilo/features/authentication/data/models/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_datasource_impl.g.dart';

class AuthDatasourceImpl implements AuthDatasource {
  @override
  Future<AuthResponseModel> login(UserModel user) async {
    final dio = Dio();
    final hashedPassword =
        sha256.convert(utf8.encode(user.password.trim())).toString();

    final formData = FormData.fromMap({
      'username': user.email,
      'password': hashedPassword,
      'grant_type': 'password',
    });

    try {
      final response = await dio.post(
        'https://apiv2stg.promilo.com/user/oauth/token',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
          },
        ),
      );

      if (response.statusCode == 200) {
        return AuthResponseModel(
            token: response.data['response']['access_token']);
      } else {
        throw Exception(
            'Login failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      throw BaseException('Login failed, try again. $e');
    }
  }
}

@riverpod
AuthDatasource authDatasource(AuthDatasourceRef ref) {
  return AuthDatasourceImpl();
}
