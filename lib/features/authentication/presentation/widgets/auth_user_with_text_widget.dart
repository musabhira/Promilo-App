import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/themes/app_theme.dart';

class AuthUserWithTextWidget extends ConsumerWidget {
  final String text;
  const AuthUserWithTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return Padding(
        padding: EdgeInsets.only(right: theme.spaces.space_400),
        child: Row(children: [
          const Spacer(),
          Text(
            text,
            style: theme.typography.h300,
          )
        ]));
  }
}
