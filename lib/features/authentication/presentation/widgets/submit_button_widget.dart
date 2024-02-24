import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/login_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class SubmitButton extends ConsumerWidget {
  final VoidCallback? onPressed;
  const SubmitButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(loginPageConstantsProvider);
    final theme = AppTheme.of(context);
    return Center(
      child: SizedBox(
        width: theme.spaces.space_100 * 43.125,
        height: theme.spaces.space_100 * 6.25,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: theme.colors.textInverse,
            backgroundColor: Colors.blue,
            disabledBackgroundColor: Colors.blue.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(theme.spaces.space_150),
              side: BorderSide(color: theme.colors.secondary, width: 3.0),
            ),
          ),
          child: Text(
            constants.txtIconSummit,
            style: theme.typography.h500.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
