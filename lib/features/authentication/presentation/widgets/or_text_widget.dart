import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/login_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class OrTextwidget extends ConsumerWidget {
  const OrTextwidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(loginPageConstantsProvider);
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.only(
          top: theme.spaces.space_300,
          left: theme.spaces.space_300,
          right: theme.spaces.space_300,
          bottom: theme.spaces.space_200),
      child: Row(
        children: [
          const Expanded(
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: theme.spaces.space_100,
            ),
            child: Text(
              constants.txtOr,
              style: theme.typography.h200,
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
