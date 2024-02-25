import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/themes/app_theme.dart';

class DotDecoratorWidget extends ConsumerWidget {
  const DotDecoratorWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return Positioned(
      bottom: theme.spaces.space_100 * 10.625,
      right: theme.spaces.space_100 * 18.75,
      child: DotsIndicator(
        dotsCount: 5,
        position: 0,
        decorator: DotsDecorator(
          color: theme.colors.textSubtlest,
          activeColor: theme.colors.textInverse,
          size: Size.square(theme.spaces.space_100),
          activeSize: Size(theme.spaces.space_100, theme.spaces.space_100),
        ),
      ),
    );
  }
}
