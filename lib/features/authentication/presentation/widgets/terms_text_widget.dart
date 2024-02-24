import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/login_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class TermsTextWidget extends ConsumerWidget {
  const TermsTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(loginPageConstantsProvider);
    final theme = AppTheme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          constants.txtPromilos,
          style: theme.typography.h400,
        ),
        Text(
          constants.txtTerms,
          style: theme.typography.h700,
        )
      ],
    );
  }
}
