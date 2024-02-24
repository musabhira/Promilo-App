import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:promilo/features/authentication/data/models/user_model.dart';
import 'package:promilo/features/authentication/data/repository/auth_repository_impl.dart';
import 'package:promilo/features/authentication/domain/usecases/login_usecase.dart';
import 'package:promilo/features/home/presentation/page/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  bool build() {
    /// Loading handling state
    return true;
  }

  void toggle(bool isValid) {
    state = isValid;
  }

  Future<void> login(
      String email, String password, BuildContext context) async {
    state = true;
    try {
      final token =
          await LoginUsecase(repository: ref.watch(authRepositoryProvider))(
              UserModel(email: email, password: password));
      state = false;
      if (token.token != '') {
        Future.sync(() => context.go(HomePage.routePath)
            //  ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(
            //     content: Text("Success"),
            //   ),
            // ),
            );
      }
    } catch (e) {
      state = false;
      Future.sync(
        () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
          ),
        ),
      );
    }
  }
}
