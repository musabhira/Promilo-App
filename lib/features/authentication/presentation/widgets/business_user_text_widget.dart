import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/login_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class BusinessUserTextWidget extends ConsumerWidget {
  const BusinessUserTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(loginPageConstantsProvider);
    final theme = AppTheme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            constants.txtBusinessUser,
            style: theme.typography.h600,
          ),
          const Spacer(),
          Text(
            constants.txtDontAccount,
            style: theme.typography.h600,
          )
        ],
      ),
    );
  }
}
