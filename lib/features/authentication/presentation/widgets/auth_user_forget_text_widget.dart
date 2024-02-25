import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/login_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

final isCheckedProvider = StateProvider<bool>((ref) => false);

class AuthUserForgetTextWidget extends ConsumerWidget {
  final String text;
  const AuthUserForgetTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(loginPageConstantsProvider);
    final theme = AppTheme.of(context);
    return Padding(
        padding: EdgeInsets.only(
            right: theme.spaces.space_400, left: theme.spaces.space_300),
        child: Row(children: [
          Container(
            width: theme.spaces.space_100 * 2.5,
            height: theme.spaces.space_100 * 2.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: theme.colors.textSubtlest,
                width: 2.0,
              ),
            ),
          ),
          SizedBox(
            width: theme.spaces.space_100,
          ),
          Text(
            constants.txtRememberMe,
            style: theme.typography.h400,
          ),
          const Spacer(),
          Text(
            text,
            style: theme.typography.h300,
          )
        ]));
  }
}
