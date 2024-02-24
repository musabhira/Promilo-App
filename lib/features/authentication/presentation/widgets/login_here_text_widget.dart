import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/login_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class LoginHereTextWidget extends ConsumerWidget {
  const LoginHereTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(loginPageConstantsProvider);
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
      child: Row(
        children: [
          Text(
            constants.txtLoginHere,
            style: theme.typography.h300,
          ),
          const Spacer(),
          Text(
            constants.txtSignUp,
            style: theme.typography.h300,
          )
        ],
      ),
    );
  }
}
